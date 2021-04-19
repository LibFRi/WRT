#!/bin/bash
#
# Copyright (c) 2019-2020 
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
#
# File name: custom_config.sh
# Description: Add custom config
#

# Add UPX to staging_dir/host/bin
wget -q -O - https://github.com/upx/upx/releases/download/v3.96/upx-3.96-amd64_linux.tar.xz
tar -Jx --strip 1 -f - -C staging_dir/host/bin upx-3.96-amd64_linux/upx
# Modify default IP
sed -i 's/192.168.1.1/192.168.100.1/g' package/base-files/files/bin/config_generate
