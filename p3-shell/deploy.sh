#!/bin/bash
# 简易自动化部署脚本
systemctl stop myapp
cp /tmp/new_app.jar /home/lk/myapp/App.jar
systemctl start myapp
curl -sf http://127.0.0.1:8080 || (echo "部署失败，执行回滚"; systemctl restart myapp)