const mongoose = require('mongoose');

// Tạo schema cho thời khóa biểu
const thoiKhoaBieuSchema = new mongoose.Schema({
    tenHocPhan: {
        type: String,
        required: true
    },
    caHoc: {
        type: String,
        enum: ['Sáng', 'Chiều'], // Chỉ chấp nhận giá trị 'Sáng' hoặc 'Chiều'
        required: true
    },
    lichHoc: {
        type: String,
        required: true
    },
    giaoVien: {
        type: String,
        required: true
    },
    phongHoc: {
        type: String,
        required: true
    },
}, {
    timestamps: true  // Tự động thêm `createdAt` và `updatedAt`
});

// Tạo model ThoiKhoaBieu
const ThoiKhoaBieu = mongoose.model('ThoiKhoaBieu', thoiKhoaBieuSchema);

module.exports = ThoiKhoaBieu;
