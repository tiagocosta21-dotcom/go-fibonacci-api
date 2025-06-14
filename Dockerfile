# Dockerfile
FROM golang:1.24 as builder

WORKDIR /app
COPY . .

RUN go mod init fibonacci-api && go mod tidy
RUN go build -o fibonacci-app

FROM gcr.io/distroless/base-debian12

WORKDIR /
COPY --from=builder /app/fibonacci-app .

EXPOSE 8080

ENTRYPOINT [\"/fibonacci-app\"]
