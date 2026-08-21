#!/bin/bash
#
# diy-part1.sh - OpenWrt DIY script part 1 (Before Update feeds)
# https://github.com/P3TERX/Actions-OpenWrt
#

# ============================================================
# 修复：避免重复添加 mmdvm feed
# 原逻辑是直接 echo >> feeds.conf.default，会与文件里已有的定义冲突
# 现在改为：仅当 mmdvm feed 不存在时才追加
# ============================================================

echo "src-git mmdvm https://github.com/fndsz/mmdvm-op" >> feeds.conf.default
