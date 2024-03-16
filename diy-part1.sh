#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part1.sh
# Description: OpenWrt DIY script part 1 (Before Update feeds)
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

sed -i 's/KERNEL_PATCHVER:=6.1/KERNEL_PATCHVER:=6.6/g' ./target/linux/x86/Makefile
sed -i 's/KERNEL_PATCHVER:=5.15/KERNEL_PATCHVER:=6.6/g' ./target/linux/x86/Makefile

# Add a feed source
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
# sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
# sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default

# cd lede/package/lean
# rm -rf ./feeds/luci/themes/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git luci-theme-argon

# rm -rf ./feeds/luci/themes/luci-app-argon-config # if have
# git clone -b 18.06 https://github.com/jerrykuku/luci-app-argon-config.git luci-app-argon-config

cd lede/package/lean/  
git clone https://github.com/jerrykuku/lua-maxminddb.git  #git lua-maxminddb 依赖
# git clone https://github.com/jerrykuku/openwrt-package

# git clone https://github.com/kongfl888/luci-app-adguardhome

# cd lede/package
# rm -rf ./feeds
# rm -rf package/lean/luci-theme-argon
# git clone -b 18.06 https://github.com/jerrykuku/luci-theme-argon.git package/lean/luci-theme-argon
# git clone -b 18.06 https://github.com/kiddin9/luci-theme-edge package/lean/luci-theme-edge

# sed -i 's/luci-theme-bootstrap/luci-theme-argon/' feeds/luci/collections/luci/Makefile

# rm -rf package/helloworld
# git clone --depth=1 https://github.com/fw876/helloworld.git package/helloworld
# git -C package/helloworld pull
# rm -rf package/helloworld

# rm -rf package/lean/luci-app-adguardhome
# git clone https://github.com/rufengsuixing/luci-app-adguardhome.git package/lean/luci-app-adguardhome

# rm -rf package/lean/luci-app-poweroff
# git clone https://github.com/esirplayground/luci-app-poweroff.git package/lean/luci-app-poweroff
