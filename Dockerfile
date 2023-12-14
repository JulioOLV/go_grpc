FROM golang:1.21

RUN apt update && \
    apt install sqlite3 && \
    sqlite3 --version && \
    apt install -y protobuf-compiler && \
    protoc --version && \
    go install google.golang.org/protobuf/cmd/protoc-gen-go@v1.28 && \
    go install google.golang.org/grpc/cmd/protoc-gen-go-grpc@v1.2 && \
    go install github.com/ktr0731/evans@latest