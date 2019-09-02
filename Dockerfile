FROM alpine:latest

COPY . /
RUN unzip etcdkeeper-v0.7.5-linux_x86_64.zip && chmod +x /etcdkeeper/etcdkeeper
WORKDIR /etcdkeeper
EXPOSE "8080"
ENTRYPOINT ["./etcdkeeper"]
