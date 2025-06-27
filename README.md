# 👟 Website Bán Giày - ASP.NET C#

Dự án xây dựng hệ thống website thương mại điện tử bán giày, gồm giao diện người dùng thân thiện và hệ thống quản trị viên để quản lý sản phẩm, đơn hàng, người dùng và liên hệ. Sử dụng ASP.NET Web Forms với ngôn ngữ lập trình C# và cơ sở dữ liệu SQL Server.
Nhóm thực hiện: Nguyễn Đỗ Huy Thông
---

## 📌 Mục tiêu chính

- Cung cấp giao diện mua sắm trực tuyến cho khách hàng: xem sản phẩm, lọc, thêm giỏ hàng, đặt hàng.
- Xây dựng hệ thống quản trị viên: quản lý sản phẩm, danh mục, tài khoản, đơn hàng, liên hệ.
- Đáp ứng bài tập lớn môn học **Phát triển Ứng dụng Web – DT22TTC8**

---

## ✅ Chức năng đã hoàn thiện

### 👤 Người dùng (Khách hàng):
- Xem danh mục và sản phẩm nổi bật
- Lọc, tìm kiếm sản phẩm theo nhiều tiêu chí
- Thêm sản phẩm vào giỏ hàng
- Lập đơn hàng với thông tin người nhận
- Trang giới thiệu & liên hệ

### 🔐 Quản trị viên (Admin):
- Đăng nhập vào hệ thống
- Quản lý loại tài khoản và tài khoản
- Quản lý danh mục sản phẩm (cấp cha, cấp con)
- Quản lý sản phẩm (CRUD)
- Quản lý đơn hàng (duyệt, cập nhật trạng thái)
- Quản lý liên hệ (phản hồi khách hàng)

---

## 🚀 Hướng dẫn cài đặt

### ⚙️ Yêu cầu hệ thống

- Visual Studio 2019 hoặc mới hơn
- .NET Framework 4.7.2 hoặc tương đương
- SQL Server (Express hoặc đầy đủ)
- Trình duyệt web hiện đại (Chrome/Edge/Firefox)

### 🧱 Các bước thực hiện

1. **Clone dự án**
   ```bash
   git clone https://github.com/YourFavouriteDev/ASPNET-DT22TTC8-NguyenDoHuyThong-WEBBANGIAY.git

2. Mở project bằng Visual Studio

Mở file BanGiay_TMDT.sln bằng Visual Studio 2019 hoặc phiên bản mới hơn.

3. Khởi tạo cơ sở dữ liệu

Mở SQL Server Management Studio (SSMS)

Chạy script tạo database trong ./Add_Data/data.sql

Cập nhật chuỗi kết nối trong Web.config:

<connectionStrings>
    <add name="DBEntities" 
         connectionString="Data Source=.;Initial Catalog=TenDatabase;Integrated Security=True" 
         providerName="System.Data.SqlClient" />
</connectionStrings>
4. Build và chạy dự án

Nhấn F5 hoặc chọn Start Debugging trong Visual Studio.

Truy cập đường dẫn http://localhost:[port] được cung cấp sau khi chạy.

Tài khoản đăng nhập quản trị là admin/123456