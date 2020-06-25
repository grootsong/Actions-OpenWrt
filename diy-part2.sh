#!/bin/bash
#============================================================
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
# Lisence: MIT
# Author: P3TERX
# Blog: https://p3terx.com
#============================================================

# Modify default IP and host name
sed -e 's/192.168.1.1/192.168.16.1/g' -e 's/hostname='OpenWrt'/hostname='OpenWrt-PPS/g' package/base-files/files/bin/config_generate

# Modify distribution reversion
sed -i 's/R20.6.18/V202006/g' package/lean/default-settings/files/zzz-default-settings

