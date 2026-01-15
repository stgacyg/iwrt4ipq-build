# 配置软件源
sed -i 's|downloads\.immortalwrt\.org|immortalwrt.kyarucloud.moe|g' /etc/apk/repositories.d/distfeeds.list
# 删除xray-core
rm /usr/bin/xray
# 添加OpenWrt-momo软件源
wget -O - https://github.com/nikkinikki-org/OpenWrt-momo/raw/refs/heads/main/feed.sh | ash
# 安装v2ray geodata
apk add v2ray-geosite v2ray-geoip
