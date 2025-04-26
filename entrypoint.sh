#!/bin/bash

cat <<EOF > /app/config.json
{
  "mcpServers": {
    "fetch": {
      "command": "uvx",
      "args": [
        "mcp-server-fetch"
      ]
    },
    "mcp-server-time": {
      "command": "uvx",
      "args": [
        "mcp-server-time",
        "--local-timezone=${TZ}"
      ],
      "alwaysAllow": [
        "get_current_time",
        "convert_time"
      ]
    }
  }
}
EOF

exec mcpo --config /app/config.json
