# 使用官方 eooce/webssh 镜像作为基础
FROM eooce/webssh:latest

# 删除默认背景图
RUN rm -f /app/webssh/static/background.png

# 可选：添加自定义 CSS 文件来修改界面
COPY custom.css /app/webssh/static/custom.css

# 设置默认命令
CMD ["python", "webssh.py"]
