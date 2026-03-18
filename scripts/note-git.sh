#!/bin/bash
# 自动进入仓库目录，拉取最新代码

REPO_PATH="/home/wzj/Documents/notes/"   # 替换为你的本地仓库路径
LOG_PATH="/home/wzj/.cache/note-git.log"
cd $REPO_PATH || { echo "仓库目录不存在" >> $LOG_PATH; exit 1; }

# 拉取远程 main 分支（使用 --ff-only 确保不会意外产生合并提交）
git pull --ff-only  >> $LOG_PATH

# 记录执行时间
echo "$(date): Pull executed" >> $LOG_PATH
