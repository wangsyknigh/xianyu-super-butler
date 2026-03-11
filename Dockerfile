# 使用阿里云镜像（已构建好，无需等待）
FROM registry.cn-shanghai.aliyuncs.com/zhinian-software/xianyu-auto-reply:latest

# 设置环境变量 - Render要求10000端口
ENV WEB_PORT=10000
ENV PORT=10000
ENV PYTHONUNBUFFERED=1

# 暴露10000端口
EXPOSE 10000

# 设置数据卷（Render磁盘挂载点）
VOLUME ["/app/data"]

# 启动命令（使用环境变量指定的端口）
CMD ["sh", "-c", "python Start.py"]
