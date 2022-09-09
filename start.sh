#!/bin/sh

cat << EOF > /etc/config.json
{
    "log": {
        "loglevel": "info"
    },
    "routing": {
        "domainStrategy": "AsIs",
        "rules": [
            {
                "type": "field",
                "ip": [
                    "geoip:private"
                ],
                "outboundTag": "block"
            }
        ]
    },
    "inbounds": [
        {
            "listen": "127.0.0.1",
            "port": 443,
            "protocol": "vmess",
            "settings": {
                "clients": [
                    {
                        "id": "2d8acb89-7836-46fb-8044-d2b708b9b1bb"
                    }
                ]
            },
            "streamSettings": {
                "network": "ws",
                "security": "none"
            }
        }
    ],
    "outbounds": [
        {
            "protocol": "freedom",
            "tag": "direct"
        },
        {
            "protocol": "blackhole",
            "tag": "block"
        }
    ]
}
EOF
/xxx/xxxx run -c /xxx/c.json
