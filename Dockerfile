FROM golang:1.12.4

ENV GOPROXY=https://goproxy.io
ENV GO111MODULE=on

WORKDIR /shadowsocks-go

RUN go get github.com/shadowsocks/shadowsocks-go/cmd/shadowsocks-local

ENTRYPOINT [ "shadowsocks-local" ]