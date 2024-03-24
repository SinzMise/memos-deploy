# memos-deploy
在serv00等某些免费平台部署Memos

## Serv00部署教程
新建并进入Memos的工作目录：
```
mkdir -p ~/domains/alist && cd ~/domains/alist
```
接着使用一键命令安装Memos：
```
wget -O memos-freebsd.sh https://raw.githubusercontent.com/SinzMise/memos-deploy/main/memos-serv00.sh && sh memos-freebsd.sh
```
然后运行./memos --data ./db --mode prod --port （在Serv00放行的端口）即可使用
