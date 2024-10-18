require('dotenv').config();
const express = require('express');
const mongoose = require('mongoose');
const cors = require('cors');
const fs = require('fs');
const http = require('http');
const { Server } = require('socket.io');
const fileUpload = require('express-fileupload');
const authRoutes = require('./routes/auth');
const { MB } = require('mbbank');
const { handleFileUpload } = require('./handlers/fileHandler');
const path = require('path');
const thoiKhoaBieu = require('./routes/thoiKhoaBieu');
const app = express();

const server = http.createServer(app);
const io = new Server(server, {
  cors: {
    origin: '*',
    methods: ['GET', 'POST'],
    credentials: true
  }
});
const uploadsDir = path.join(__dirname, 'uploads');
if (!fs.existsSync(uploadsDir)) {
  fs.mkdirSync(uploadsDir);
}

app.use(fileUpload({
  createParentPath: true,
  limits: { 
    fileSize: 50 * 1024 * 1024 // giới hạn 50MB
  },
}));
// Middleware
app.use(cors({
  origin: '*',
  methods: ['GET', 'POST'],
  allowedHeaders: ['Content-Type'],
  credentials: true
}));
app.use(express.json());


const USERNAME_BANK = 'VUDUYQUANG23102004';
const PASSWORD_BANK = 'Duyquang2310@';

io.on('connection', (socket) => {

  // Hàm fetch dữ liệu liên tục
  const fetchBankInfo = async () => {
    // Khởi tạo MB với thông tin đăng nhập
    const mb = new MB({ username: USERNAME_BANK, password: PASSWORD_BANK });

    try {
      const balance = await mb.getBalance(); // Lấy số dư

      // Kiểm tra nếu balance không hợp lệ
      if (!balance || !balance.balances || !balance.balances[0]) {
        throw new Error('Không thể lấy thông tin tài khoản.');
      }

      // Lấy các giá trị cần thiết từ balance
      const totalBalance = balance.totalBalance || 0; // Dự phòng giá trị 0 nếu undefined
      const number = balance.balances[0].number || 'N/A'; // Số tài khoản
      const name = balance.balances[0].name || 'Không có tên'; // Tên chủ tài khoản
      const currentBalance = balance.balances[0].balance || 0; // Số dư tài khoản

      // Gửi thông tin tài khoản đến client
      socket.emit('bankInfo', {
        totalBalance: totalBalance,
        number: number,
        name: name,
        balance: currentBalance,
      });

      const today = new Date();
      const firstDayOfMonth = new Date(today.getFullYear(), today.getMonth(), 1);
      const lastDayOfMonth = new Date(today.getFullYear(), today.getMonth() + 1, 0);

      const formatDate = (date) => {
        return `${String(date.getDate()).padStart(2, '0')}/${String(date.getMonth() + 1).padStart(2, '0')}/${date.getFullYear()}`;
      };

      const getTransactionsHistory = await mb.getTransactionsHistory({
        accountNumber: number,
        fromDate: formatDate(firstDayOfMonth),
        toDate: formatDate(lastDayOfMonth)
      });

      // Kiểm tra nếu không lấy được lịch sử giao dịch
      if (!getTransactionsHistory || getTransactionsHistory.length === 0) {
        throw new Error('Không có lịch sử giao dịch.');
      }

      // Gửi toàn bộ lịch sử giao dịch của tháng hiện tại cho client
      socket.emit('transactionsHistory', getTransactionsHistory);

    } catch (err) {
      console.error('Lỗi khi lấy số dư hoặc lịch sử giao dịch:', err);
      socket.emit('bankInfo', { error: 'Không thể lấy số dư hoặc lịch sử giao dịch.' });
    }
  };

  const interval = setInterval(fetchBankInfo, 60000); // 30 giây

  // Lắng nghe sự kiện disconnect để dừng interval
  socket.on('disconnect', () => {
    clearInterval(interval); // Xóa interval khi client ngắt kết nối
  });

  // Fetch ngay khi kết nối
  fetchBankInfo();
});


// API nhận file
app.post('/upload', async (req, res) => {
  try {
    if (!req.files || Object.keys(req.files).length === 0) {
      return res.status(400).send('Không có file nào được gửi');
    }

    const uploadedFile = req.files.file;
    const filePath = path.join(uploadsDir, uploadedFile.name);

    await uploadedFile.mv(filePath);

    // Gọi hàm xử lý file
    const headings = await handleFileUpload(filePath);
    res.json({ headings });
  } catch (error) {
    console.error('Lỗi khi xử lý file:', error);
    res.status(500).send('Có lỗi xảy ra khi xử lý file');
  }
});

// Kết nối đến MongoDB

mongoose.connect(process.env.MONGODB_URI, { useNewUrlParser: true, useUnifiedTopology: true })
  .then(() => console.log('Kết nối MongoDB thành công'))
  .catch(err => console.error('Kết nối MongoDB thất bại:', err.message));


// Sử dụng các route
app.use('/api/auth', authRoutes);
app.use('/', thoiKhoaBieu);

// Khởi động server
const PORT = process.env.PORT || 5000;
server.listen(PORT, '192.168.1.6', () => {
  console.log(`Server đang chạy trên cổng ${PORT} và IP 192.168.1.6`);
});
