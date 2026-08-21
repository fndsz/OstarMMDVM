#!/bin/bash # 
# OstarMMDVM diy-part1.sh 
# 在 Update feeds 之前执行 # 
# 替换 mmdvm feed 为 fndsz/mmdvm-op（包含核心 MMDVM 包） 
sed -i "/src-git mmdvm/d" feeds.conf.default echo "src-git mmdvm https://github.com/fndsz/mmdvm-op" >> feeds.conf.default
# 添加 devtools feed（包含 oled-tool, libaruipioled） 
echo "src-git devtools https://github.com/lazywalker/devtools-feeds" >> feeds.conf.default 
echo "feeds.conf.default 已更新:"
