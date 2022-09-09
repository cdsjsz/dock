#!/bin/sh

# config v2ray
cat << EOF > /etc/config.json
{
  "inbounds":[
    {
      "port": $PORT,
      "protocol": "$PR",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "$ID"
          }
        ]
      },
      "streamSettings": {
        "network": "ws"
      }
    }
  ],
  "outbounds": [
    {
      "protocol": "freedom"
    }
  ]
}		
EOF
nohup /xxx/xxxx run -c /etc/config.json > /dev/null 2>&1 &
