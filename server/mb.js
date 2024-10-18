(async () => {
    const { MB } = require("mbbank");

    const mb = new MB({ username: "VUDUYQUANG23102004", password: "Duyquang2310@" });

    try {
        // Sử dụng await để chờ kết quả trả về từ getTransactionsHistory
        const getTransactionsHistory = await mb.getTransactionsHistory({ 
            accountNumber: "0000271274076", 
            fromDate: "22/09/2024", 
            toDate: "28/09/2024" 
        });

        console.log(getTransactionsHistory);
    } catch (error) {
        console.log('Lỗi khi lấy lịch sử giao dịch:', error);
    }
})();
