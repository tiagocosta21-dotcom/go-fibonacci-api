FROM golang:1.24-alpine

WORKDIR /app

COPY . .

RUN go mod download || true

RUN go build -o go-fibonacci-api

EXPOSE 8080
CMD ["./go-fibonacci-api"]