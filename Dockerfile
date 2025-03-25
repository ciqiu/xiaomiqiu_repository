# ʹ�ö�׶ι�������С�����С
FROM --platform=$BUILDPLATFORM alpine:latest as builder

# ���幹������
ARG TARGETARCH
ARG TARGETOS

# ����Ŀ��Ŀ¼�������ļ�
RUN mkdir -p /app/${TARGETOS}_${TARGETARCH}
COPY ${TARGETOS}_${TARGETARCH}/* /app/${TARGETOS}_${TARGETARCH}/

# ����ִ��Ȩ��
RUN chmod +x /app/${TARGETOS}_${TARGETARCH}/xiaomiqiu_start.sh

# ���վ���
FROM alpine:latest

# ���ƹ����õĿͻ����ļ�
COPY --from=builder /app/${TARGETOS}_${TARGETARCH}/xiaomiqiu_start.sh /app/xiaomiqiu_start.sh

# ���ù���Ŀ¼
WORKDIR /app

# ����ִ��Ȩ��
RUN chmod +x /app/xiaomiqiu_start.sh

# ���пͻ���
CMD ["./xiaomiqiu_start.sh"]