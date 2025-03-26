# 使用多阶段构建来减小镜像大小
FROM --platform=$BUILDPLATFORM ubuntu:latest as builder

# 定义构建参数
ARG TARGETARCH
ARG TARGETOS

# 创建目标目录并复制文件
RUN mkdir -p /app/${TARGETOS}_${TARGETARCH}
COPY ${TARGETOS}_${TARGETARCH}/* /app/${TARGETOS}_${TARGETARCH}/

# 设置执行权限
RUN chmod +x /app/${TARGETOS}_${TARGETARCH}/xiaomiqiu_start.sh

# 最终镜像
FROM ubuntu:latest

# 复制构建好的客户端文件
COPY --from=builder /app/${TARGETOS}_${TARGETARCH}/xiaomiqiu_start.sh /app/xiaomiqiu_start.sh

# 设置工作目录
WORKDIR /app

# 设置执行权限
RUN chmod +x /app/xiaomiqiu_start.sh

# 运行客户端
CMD ["./xiaomiqiu_start.sh"]
