# 配置软件源
sed -i 's|downloads\.immortalwrt\.org|immortalwrt.kyarucloud.moe|g' /etc/apk/repositories.d/distfeeds.list
# 添加OpenWrt-momo软件源
wget -O - https://github.com/nikkinikki-org/OpenWrt-momo/raw/refs/heads/main/feed.sh | ash
# 下载v2ray geodata
apk add v2ray-geosite v2ray-geoip
# 删除xray-core
/etc/init.d/xray disable
rm /usr/bin/xray
rm /etc/init.d/xray
# 删除xray残留文件
rm -r /etc/xray
rm -r /usr/share/xray
