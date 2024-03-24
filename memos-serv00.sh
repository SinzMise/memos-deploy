#!/bin/sh

API_URL="https://api.github.com/repos/SinzMise/memos-deploy/releases/latest"

DOWNLOAD_URL=$(curl -s $API_URL | jq -r ".assets[] | select(.name | contains(\"memos-freebsd\")) | .browser_download_url")

curl -L $DOWNLOAD_URL -o memos

chmod +x memos

if [ -f "./data/config.json" ]; then
    echo "Memos-FreeBSD最新版本已经下载覆盖完成！"
else
    mkdir ./db
    mkdir ./db/.thumbnail_cache
    nohup ./memos --data ./db --mode prod > /dev/null 2>&1 &
    clear
    echo "Memos-FreeBSD最新版本已经安装完成！"
    echo 
    echo "运行./memos --data ./db --mode prod --port （放行的端口）即可使用Memos"
    echo
fi
