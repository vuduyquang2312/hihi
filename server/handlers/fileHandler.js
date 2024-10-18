const fs = require('fs');
const cheerio = require('cheerio');

const handleFileUpload = async (filePath) => {
  try {
    const fileContent = await fs.promises.readFile(filePath, 'utf8');
    const $ = cheerio.load(fileContent);

    // Lấy tất cả các thông tin về lịch học
    const thongTinLichHoc = $('table.GridViewStyle tr').filter((i, el) => $(el).find('td').length > 0).map((i, el) => {
        
        const maHocPhan = $(el).find('td:nth-child(1)').text();
        const tenHocPhan = $(el).find('td:nth-child(2)').text();
        const soTinChi = $(el).find('td:nth-child(3)').text();
        const tenLopTinChi = $(el).find('td:nth-child(4)').text();
        const caHoc = $(el).find('td:nth-child(5)').text();
        const lichHoc = $(el).find('td:nth-child(6)').text();
        const giaoVien = $(el).find('td:nth-child(7)').text();
        const phongHoc = $(el).find('td:nth-child(8)').text();
        const donGia = $(el).find('td:nth-child(9)').text();
        const soTienNop = $(el).find('td:nth-child(10)').text();
      
        return {
          maHocPhan,
          tenHocPhan,
          soTinChi,
          tenLopTinChi,
          caHoc,
          lichHoc,
          giaoVien,
          phongHoc,
          donGia,
          soTienNop,
        };
      }).get();

    return thongTinLichHoc;
  } catch (error) {
    console.error('Lỗi khi xử lý file:', error);
    throw error;
  }
};

module.exports = {
  handleFileUpload
};