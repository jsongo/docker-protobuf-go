FROM jsongo/protobuf

MAINTAINER jsongo <jsongo@qq.com>

# RUN apk update
RUN apk add --update go
RUN apk add --update git

RUN mkdir -p /go/src

ENV GOPATH /go
ENV PATH $PATH:$GOPATH/bin

RUN go get -u github.com/golang/protobuf/proto github.com/golang/protobuf/protoc-gen-go
# RUN go get -u github.com/micro/protobuf/{proto,protoc-gen-go}

RUN apk del git
