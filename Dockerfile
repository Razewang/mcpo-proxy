FROM python:3.11-slim

WORKDIR /app

# 安装系统依赖 + Node.js
RUN apt-get update && \
    apt-get install -y curl unzip && \
    curl -fsSL https://deb.nodesource.com/setup_18.x | bash - && \
    apt-get install -y nodejs && \
    apt-get clean

# 安装 bun
RUN curl -fsSL https://bun.sh/install | bash
ENV BUN_INSTALL="/root/.bun"
ENV PATH="${BUN_INSTALL}/bin:${PATH}"

# 安装 Python 依赖
RUN pip install --no-cache-dir mcpo uv