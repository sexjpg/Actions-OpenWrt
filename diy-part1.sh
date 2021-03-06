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
# sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git lienol https://github.com/Lienol/openwrt-package' feeds.conf.default
sed -i '$a src-git kenzo https://github.com/kenzok8/openwrt-packages' feeds.conf.default
sed -i '$a src-git helloworld https://github.com/fw876/helloworld' feeds.conf.default

#passwall的依赖
sed -i '$a src-git small https://github.com/kenzok8/small' feeds.conf.default
#vssr的依赖
#sed -i '$a src-git lua-maxminddb https://github.com/jerrykuku/lua-maxminddb' feeds.conf.default


# HelloWorld ,要配合Argon主题https://github.com/jerrykuku/luci-app-vssr
# sed -i '$a src-git helloworld https://github.com/jerrykuku/luci-app-vssr' feeds.conf.default


cd package && mkdir diy && cd diy 
git clone https://github.com/jerrykuku/luci-theme-argon diy_luci-theme-argon
git clone https://github.com/tty228/luci-app-serverchan diy_luci-app-serverchan

# sed -i '$a src-git themeargon https://github.com/jerrykuku/luci-theme-argon' feeds.conf.default
