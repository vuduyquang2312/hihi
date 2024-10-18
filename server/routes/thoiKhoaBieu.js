const express = require('express');
const router = express.Router();
const ThoiKhoaBieu = require('../models/ThoiKhoaBieu'); // Đường dẫn tới file chứa model

// Route để xử lý POST yêu cầu và lưu thời khóa biểu
router.post('/api/thoi-khoa-bieu', async (req, res) => {
    try {
        const { tenHocPhan, caHoc, lichHoc, giaoVien, phongHoc } = req.body;

        // Tạo mới một thời khóa biểu
        const newThoiKhoaBieu = new ThoiKhoaBieu({
            tenHocPhan,
            caHoc,
            lichHoc,
            giaoVien,
            phongHoc
        });

        // Lưu vào database
        await newThoiKhoaBieu.save();
        res.status(200).json({ message: 'Thêm thời khóa biểu thành công!' });
    } catch (error) {
        console.error('Có lỗi khi lưu thời khóa biểu:', error);
        res.status(500).json({ message: 'Có lỗi xảy ra khi thêm thời khóa biểu' });
    }
});
router.get('/tkb', async (req, res) => {
    try {
        // Lấy toàn bộ dữ liệu từ MongoDB
        const thoiKhoaBieuList = await ThoiKhoaBieu.find();
        
        // Trả về dữ liệu dưới dạng JSON
        res.status(200).json(thoiKhoaBieuList);
    } catch (error) {
        console.error("Có lỗi khi lấy dữ liệu TKB:", error);
        res.status(500).json({ message: "Có lỗi xảy ra khi lấy dữ liệu thời khóa biểu" });
    }
});
module.exports = router;
