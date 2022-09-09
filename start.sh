#!/bin/sh

cat << EOF > /etc/config.json
{
  "inbounds":[
    {
      "port": 443,
      "protocol": "vmess",
      "settings": {
        "decryption": "none",
        "clients": [
          {
            "id": "2d8acb89-7836-46fb-8044-d2b708b9b1bb"
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
