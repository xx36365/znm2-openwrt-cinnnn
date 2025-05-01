#!/bin/bash
# 添加额外插件
git clone --depth=1 https://github.com/xiaoxiao29/luci-app-adguardhome package/luci-app-adguardhome

# 科学上网插件
#git clone --depth=1 -b main https://github.com/fw876/helloworld package/luci-app-ssr-plus
#git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall-packages package/openwrt-passwall
#git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall package/luci-app-passwall
#git clone --depth=1 https://github.com/xiaorouji/openwrt-passwall2 package/luci-app-passwall2
#git_sparse_clone master https://github.com/vernesong/OpenClash luci-app-openclash

# Themes
rm -rf feeds/luci/themes/luci-theme-argon
rm -rf feeds/luci/themes/luci-theme-bootstrap

./scripts/feeds update -a
./scripts/feeds install -a
