# Dùng Python 3.11 slim
FROM python:3.11-slim

# Cập nhật & cài các package cần thiết
RUN apt-get update && apt-get install -y \
    git \
    curl \
    build-essential \
    && rm -rf /var/lib/apt/lists/*

# Tạo thư mục làm việc
WORKDIR /app

# Cài đặt Open-WebUI
RUN pip install --no-cache-dir open-webui

# Mặc định chạy serve
CMD ["open-webui", "serve", "--host", "0.0.0.0", "--port", "8088"]

# Expose port
EXPOSE 8088
