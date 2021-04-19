#!/bin/bash
#
# Copyright (c) 2019-2020 
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# 
# File name: custom_feeds.sh
# Description: Add a feed source
#

# Uncomment a feed source
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

# Add a feed source
# sed -i '$a src-git passwall https://github.com/xiaorouji/openwrt-passwall.git' feeds.conf.default
git clone -b master --depth 1 https://github.com/kuoruan/openwrt-upx.git package/openwrt-upx

git clone https://github.com/xiaorouji/openwrt-passwall.git package/passwall
