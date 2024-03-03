#!/bin/bash
#
# Copyright (c) 2019-2020 P3TERX <https://p3terx.com>
#
# This is free software, licensed under the MIT License.
# See /LICENSE for more information.
#
# https://github.com/P3TERX/Actions-OpenWrt
# File name: diy-part2.sh
# Description: OpenWrt DIY script part 2 (After Update feeds)
#
#替换golang
git clone https://github.com/coolsnowwolf/packages/ ~/lean-packages
mv ./feeds/packages/lang/golang/ ./feeds/packages/lang/golang.bak/
cp -r ~/lean-packages/lang/golang/ ./feeds/packages/lang/golang/
#sudo rm -rf feeds/packages/lang/golang
#svn co https://github.com/coolsnowwolf/packages/tree/master/lang/golang feeds/packages/lang/golang
#echo 'src-git custom https://github.com/coolsnowwolf/packages/tree/master/lang/golang.git;packages/lang/golang' >>feeds/packages/lang/golang
#优先安装 passwall 源
./scripts/feeds install -a -f -p passwall_packages
./scripts/feeds install -a -f -p passwall_luci
