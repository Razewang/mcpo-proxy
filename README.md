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

## 配置

修改`config.json`文件配置MCP服务器，示例配置：

```json
{
    "mcpServers": {
        "fetch": {
            "command": "uvx",
            "args": [
                "mcp-server-fetch"
            ]
        }
    }
}
```