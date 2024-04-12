#!/bin/bash
#
# 版权所有 (c) 2019-2020 P3TERX <https://p3terx.com>
#
# 这是免费软件，根据 MIT 许可证获得许可。
# 请参阅 /LICENSE 了解更多信息。
#
# https://github.com/P3TERX/Actions-OpenWrt
# 文件名：diy-part1.sh
# 描述：OpenWrt DIY 脚本第 1 部分（更新前的来源）
#

# 取消注释 feed 来源
#sed -i 's/^#\(.*helloworld\)/\1/' feeds.conf.default

#添加提要源
#echo 'src-git helloworld https://github.com/fw876/helloworld' >>feeds.conf.default
echo 'src-git passwall https://github.com/xiaorouji/openwrt-passwall' >>feeds.conf.default

##常用OpenWrt源码合集，同步上游更新！
## 通用版luci适合18.06与19.07
echo 'src-git Small8 https://github.com/kenzok8/small-package' >>feeds.conf.default


## 解除系统限制
ulimit -u    10000
ulimit -n   4096
ulimit -d无限
ulimit -m无限
ulimit -s无限
ulimit -t无限
ulimit -v无限

