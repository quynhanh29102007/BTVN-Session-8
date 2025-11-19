create database chitietdonhang;
use chitietdonhang;

CREATE TABLE ChiTietDonHang (
ma_chi_tiet INT,
ma_don_hang INT,
ten_san_pham VARCHAR(100),
so_luong INT,
don_gia DECIMAL(10, 2),
thanh_tien DECIMAL(10, 2)
);
INSERT INTO ChiTietDonHang (ma_chi_tiet, ma_don_hang, ten_san_pham, so_luong, don_gia, thanh_tien) VALUES
(1, 1001, 'Cà Phê Sữa', 2, 29000.00, 58000.00),
(2, 1001, 'Bạc Xỉu', 1, 35000.00, 35000.00),
(3, 1002, 'Trà Đào Cam Sả', 1, 45000.00, 45000.00),
(4, 1003, 'Cà Phê Sữa', 1, 29000.00, 29000.00),
(5, 1004, 'Trà Sữa Trân Châu Đường Đen', 2, 55000.00, 110000.00),
(6, 1005, 'Bạc Xỉu', 1, 35000.00, 35000.00),
(7, 1006, 'Cà Phê Sữa', 3, 29000.00, 87000.00),
(8, 1006, 'Trà Chanh Gừng Mật Ong', 1, 42000.00, 42000.00),
(9, 1007, 'Trà Đào Cam Sả', 2, 45000.00, 90000.00),
(10, 1008, 'Trà Sữa Trân Châu Đường Đen', 1, 55000.00, 55000.00),
(11, 1009, 'Cà Phê Sữa', 1, 29000.00, 29000.00),
(12, 1010, 'Trà Chanh Gừng Mật Ong', 1, 42000.00, 42000.00);
 -- 1. Xây dựng báo cáo hiệu suất sản phẩm
 select ten_san_pham,
COUNT(*) AS tong_so_ly_ban,
SUM(thanh_tien) AS tong_doanh_thu,
COUNT(DISTINCT ma_don_hang) AS so_don_hang_chua_sp
from chitietdonhang 
group by ten_san_pham; 
-- 2. Phân tích và đề xuất chiến lược 
-- i. Phân loại sản phẩm
/* Sản phẩm "ngôi sao" ( có hiệu suất tốt nhất ) : cà phê sữa -> doanh thu cao nhất và số lượng đơn hàng nhiều nhất. 
sản phẩm "cần xem xét" (có hiệu suất thấp nhất): trà chanh gừng mật ong -> doanh thu thấp, chỉ xuất hiện trong 2 đơn hàng. 
ii. Lập luận 
- Cà phê sữa vừa có tổng doanh thu cao, vừa xuất hiện trong nhiều đơn hàng → chứng tỏ sức hút mạnh và là sản phẩm chủ lực.
- Trà chanh gừng mật ong có doanh thu thấp, số đơn hàng ít → hiệu suất kém, cần xem xét cải thiện hoặc loại bỏ.
iii. Đề xuất chiến lược
- Với sản phẩm "ngôi sao" (Cà Phê Sữa): 
    → Đề xuất chương trình khuyến mãi "Mua 2 tặng 1" vào giờ cao điểm để tăng thêm doanh số.
- Với sản phẩm "cần xem xét" (Bạc Xỉu): 
    → Đề xuất giảm giá dùng thử khoảng 10-15% trong 1 tháng để kiểm tra phản ứng thị trường. Nếu doanh số không cải thiện, 
    cân nhắc loại bỏ khỏi thực đơn.