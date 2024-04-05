#!/bin/sh
curl -L https://github.com/SinzMise/memos-deploy/releases/download/v0.18.2/memos-freebsd-amd64.tar.gz -o memos-freebsd-amd64.tar.gz
tar -xzvf memos-freebsd-amd64.tar.gz && rm memos-freebsd-amd64.tar.gz && chmod +x memos
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
