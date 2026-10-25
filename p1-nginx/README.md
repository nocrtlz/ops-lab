# 项目1：Nginx 静态网站部署
## 目标
使用 Nginx 发布静态网页。
## 踩坑记录
1. 遇到了 403 Forbidden。
2. 排查思路：查 /var/log/nginx/error.log 提示 Permission denied。
3. 解决：将网站目录权限归属改为 www-data，修复成功。