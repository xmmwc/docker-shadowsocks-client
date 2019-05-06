FROM golang:1.12.4

ENV GOPROXY=https://goproxy.io
ENV GO111MODULE=on
ENV SERVER_ADDRESS=
ENV SERVER_PORT=19025
ENV LOCAL_ADDRESS=127.0.0.1
ENV LOCAL_PORT=1086
ENV PASSWORD=*
ENV METHOD=aes-128-cfb

RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local

EXPOSE ${LOCAL_PORT}/tcp
EXPOSE ${LOCAL_PORT}/udp

CMD shadowsocks-local -s ${SERVER_ADDRESS} -p ${SERVER_PORT} -k ${PASSWORD} -m ${METHOD} -b ${LOCAL_ADDRESS} -l ${LOCAL_PORT}