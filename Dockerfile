FROM golang:alpine AS builder

WORKDIR $GOPATH/src/codeeducation/golang-docker/
COPY . .
RUN GOOS=linux GOARCH=amd64 go build -ldflags="-w -s" -o /go/bin/main

FROM scratch
COPY --from=builder /go/bin/main /go/bin/main
ENTRYPOINT ["/go/bin/main"]