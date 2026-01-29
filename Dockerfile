# 使用官方 webssh 镜像作为基础
FROM eooce/webssh:latest

# 删除默认背景图
RUN rm -f /app/webssh/static/background.png

# 复制自定义 CSS 文件（可选）
COPY custom.css /app/webssh/static/custom.css

# 设置默认命令
CMD ["python", "webssh.py"]
