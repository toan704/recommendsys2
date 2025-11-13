# CÁCH 2: TRỰC TIẾP
# The MovieGEEK - Hướng dẫn cài đặt

Hướng dẫn này cung cấp các bước cài đặt phiên bản tinh chỉnh của The MovieGEEK để triển khai nhanh chóng và dễ dàng hơn theo (Cách 2) trực tiếp.

Ngoài ra, có thể cài đặt theo (Cách 1) Docker: [Tại đây](https://github.com/toan704/recommendsys)

Nguồn chính của tác giả: [Tại đây](https://github.com/practical-recommender-systems/moviegeek)

## Yêu cầu

- Mã nguồn được tinh chỉnh dành cho cài đặt trực tiếp: Tải tại [MovieGEEK Custom](https://github.com/toan704/recommendsys2)
- Phiên bản python 3.6: [Python3.6_forMovieGEEK](https://github.com/toan704/recommendsys2/releases/download/tf/python-3.6.0-amd64.exe) (Tải về và cài đặt, tích chọn "Add to path")

## Cấu hình API

1. Truy cập [Themoviedb](https://www.themoviedb.org/account/signup) và đăng ký tài khoản.
2. Đăng nhập, vào Settings > API, tạo API Key và lưu lại API Key.

Trường hợp Web bị lỗi có thể sử dụng API_Key cộng đồng: `e24ba4338e5ee901917469f1a3265b85`

## Thiết lập ban đầu

1. Tại thư mục gốc của dự án. Chạy file `setup.bat`
2. Nhập API Key đã lưu và Enter để quá trình thiết lập bắt đầu

Lưu ý: Trường hợp bị xung đột thư viện, hãy chạy file `uninstall_lib_evnvirtual_CLEANER.bat`

## Khởi chạy và truy cập

1. Khởi chạy:
```bash
python manage.py runserver 127.0.0.1:8000
```
2. Truy cập URL ở trình duyệt:
```bash
http://localhost:8000
```
Để dừng, hãy ấn `Ctrl+C`