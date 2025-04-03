# MCPO Proxy 代理服务

一个基于Python的MCP代理服务，支持fetch服务。

## 主要功能

- MCP协议代理转发
- 支持fetch服务请求
- 可配置多个后端MCP服务器
- 提供健康检查接口

## 使用Docker运行

### 克隆项目

```bash
git clone https://github.com/cr-zhichen/mcpo-proxy.git
cd mcpo-proxy
```

### 启动服务

```bash
docker-compose up -d
```

服务将在端口8000运行

### 查看日志

```bash
docker-compose logs -f
```

### 健康检查

```bash
curl http://localhost:8000/health
```

## 配置

修改`config.json`文件配置MCP服务器，示例配置：

```json
{
  "servers": [
    {
      "name": "example-server",
      "url": "http://example.com/mcp"
    }
  ]
}
```

## 开发环境搭建

1. 安装Python 3.8+
2. 安装依赖：

```bash
pip install -r requirements.txt
```

3. 启动开发服务器：

```bash
python main.py
```

## API文档

### 获取MCP服务器列表

```bash
GET /api/servers
```

### 执行fetch请求

```bash
POST /api/fetch
{
  "server": "server-name",
  "resource": "resource-uri"
}
```

## 贡献指南

欢迎提交Pull Request。请确保：

- 代码符合PEP8规范
- 包含必要的单元测试
- 更新相关文档

## 许可证

本项目使用 [MIT License](LICENSE)。
