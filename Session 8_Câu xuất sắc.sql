create database donhang;
use donhang;
create table donhang (
ma_don_hang INT,
ma_khach_hang INT,
ngay_dat_hang DATE,
tong_gia_tri DECIMAL(12, 2)
);
insert into donhang (ma_don_hang, ma_khach_hang, ngay_dat_hang, tong_gia_tri) 
VALUES
(1, 101, '2023-01-20', 350000.00),
(2, 102, '2023-02-10', 1250000.00),
(3, 103, '2023-02-15', 180000.00),
(4, 101, '2023-03-05', 450000.00),
(5, 104, '2023-03-22', 850000.00),
(6, 102, '2023-04-11', 980000.00),
(7, 105, '2023-04-18', 250000.00),
(8, 101, '2023-05-25', 220000.00),
(9, 103, '2023-06-01', 320000.00),
(10, 104, '2023-06-30', 1500000.00),
(11, 102, '2023-07-14', 750000.00),
(12, 101, '2023-08-09', 650000.00),
(13, 106, '2023-09-01', 2800000.00),
(14, 103, '2023-09-20', 250000.00),
(15, 102, '2023-10-10', 1150000.00),
(16, 104, '2023-11-05', 450000.00),
(17, 101, '2023-11-28', 150000.00),
(18, 102, '2023-12-15', 2100000.00);
 -- 1. Xây dựng bảng dữ liệu phân tích khách hàng 
 select ma_khach_hang,
 SUM(tong_gia_tri) AS tong_chi_tieu, 
 COUNT(ma_don_hang) AS tong_so_don_hang,
 AVG(tong_gia_tri) AS chi_tieu_trung_binh,
 MAX(ngay_dat_hang) AS ngay_dau_tien,
 MIN(ngay_dat_hang) AS ngay_gan_nhat
 from donhang
 group by ma_khach_hang;
 -- 2. Thiết kế hệ thống phân hạng và lập luận
 /*
 i. Tên hạng : Bạch Kim
 - Tiêu chí phân hạng: 
 +) Tổng chi tiêu hơn 800,000VNĐ
 +) Tổng số đơn hàng trên 4 đơn hàng. 
 - Quyền lợi đặc biệt: Có 2 mã giảm giá 10% cho 2 đơn hàng và 5 mã miễn phí vận chuyển. 
 
 ii. Tên hạng: Vàng 
 - Tiêu chí phân hạng: 
 +) Tổng chi tiêu hơn 500,000VNĐ
 +) Tổng số đơn hàng trên 3 đơn hàng.
 - Quyền lợi đặc biệt: Có 1 mã giảm giá 10% cho 1 đơn hàng và 3 mã miễn phí vận chuyển. 
 
 iii. Tên hạng: Bạc
 - Tiêu chí phân hạng: 
 +) Tổng chi tiêu hơn 250,000VNĐ   
 +) Tổng số đơn hàng trên 2 đơn hàng. 
 - Quyền lợi đặc biệt: Có 1 mã giảm giá 5% cho 1 đơn hàng và 2 mã miễn phí vận chuyển. 
  
iv. Lập luận 
Việc chọn các tiêu chí và ngưỡng phân hạng như vậy, giúp Nhà Sách sẽ có được dữ liệu cụ thể để có 
những chính sách và chương trình đãi ngộ, ưu đãi cho những khách hàng tiềm năng. 
-> Từ đó, cũng sẽ giúp Nhà Sách có được tệp khách hàng tiềm năng, giúp phát triển doanh thu cho 
Nhà sách ở mức ổn định nhất. 