FROM node:16-alpine AS node_builder
LABEL author="anhph9492 <anhph9492@gmail.com>" name="nextjs blog" version="1.0"

WORKDIR /app

COPY package.json .
RUN npm install -f

COPY . .
RUN npm run build

EXPOSE 3333

CMD ["npm", "start"]

# FROM — chỉ định image gốc: python, unbutu, alpine…
# LABEL — cung cấp metadata cho image. Có thể sử dụng để add thông tin maintainer. Để xem các label của images, dùng lệnh docker inspect.
# ENV — thiết lập một biến môi trường.
# RUN — Có thể tạo một lệnh khi build image. Được sử dụng để cài đặt các package vào container.
# COPY — Sao chép các file và thư mục vào container.
# ADD — Sao chép các file và thư mục vào container.
# CMD — Cung cấp một lệnh và đối số cho container thực thi. Các tham số có thể được ghi đè và chỉ có một CMD.
# WORKDIR — Thiết lập thư mục đang làm việc cho các chỉ thị khác như: RUN, CMD, ENTRYPOINT, COPY, ADD,…
# ARG — Định nghĩa giá trị biến được dùng trong lúc build image.
# ENTRYPOINT — cung cấp lệnh và đối số cho một container thực thi.
# EXPOSE — khai báo port lắng nghe của image.
# VOLUME — tạo một điểm gắn thư mục để truy cập và lưu trữ data.