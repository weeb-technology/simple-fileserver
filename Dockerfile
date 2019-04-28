FROM golang:1.12.4 as build

WORKDIR /go/src/github.com/weeb-technology/simple-fileserver/

COPY . .
RUN CGO_ENABLED=0 GOOS=linux go build -a -installsuffix cgo -o /server src/main.go

FROM gruebel/upx as compress

COPY --from=build /server /server.big

RUN upx --best --lzma -o /server /server.big

FROM scratch

COPY --from=compress /server /server