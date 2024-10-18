const express = require('express');
const bcrypt = require('bcrypt');
const User = require('../models/User'); // Mô hình User của bạn
const router = express.Router();

// Route đăng ký
router.post('/register', async (req, res) => {
  const { username, password, email } = req.body;

  try {
    // Kiểm tra xem người dùng đã tồn tại
    const existingUser = await User.findOne({ $or: [{ username }, { email }] });
    if (existingUser) {
      return res.status(400).json({ message: 'Tên đăng nhập hoặc email đã tồn tại' });
    }

    // Kiểm tra giá trị mật khẩu
    if (!password || !username || !email) {
      return res.status(400).json({ message: 'Vui lòng điền đầy đủ thông tin' });
    }

    // Băm mật khẩu
    const saltRounds = 10; // Số vòng băm
    const hashedPassword = await bcrypt.hash(password, saltRounds); // Đảm bảo password và saltRounds không phải là undefined

    // Tạo người dùng mới
    const newUser = new User({
      username,
      password: hashedPassword,
      email,
    });

    // Lưu người dùng vào cơ sở dữ liệu
    await newUser.save();
    res.status(201).json({ message: 'Đăng ký thành công' });
  } catch (error) {
    console.error('Lỗi khi đăng ký:', error);
    res.status(500).json({ message: 'Đã xảy ra lỗi' });
  }
});

// Route đăng nhập
router.post('/login', async (req, res) => {
  const { username, password } = req.body;

  try {
    // Kiểm tra xem người dùng đã tồn tại
    const existingUser = await User.findOne({ username });
    if (!existingUser) {
      return res.status(404).json({ message: 'Người dùng không tồn tại' });
    }

    // Kiểm tra mật khẩu
    const isMatch = await bcrypt.compare(password, existingUser.password);
    if (!isMatch) {
      return res.status(401).json({ message: 'Mật khẩu không đúng' });
    }

    // Đăng nhập thành công
    res.status(200).json({ message: 'Đăng nhập thành công', user: existingUser });
  } catch (error) {
    console.error('Lỗi khi đăng nhập:', error);
    res.status(500).json({ message: 'Đã xảy ra lỗi' });
  }
});

module.exports = router;
