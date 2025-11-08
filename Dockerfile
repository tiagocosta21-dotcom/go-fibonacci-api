FROM golang:1.24-alpine

WORKDIR /app

COPY . .

<<<<<<< HEAD
RUN GO mod download || true
=======
RUN go mod download || true
>>>>>>> ae725b76b99fa293f4270dc81d2e7ffd84eb18a9

RUN go build -o go-fibonacci-api

EXPOSE 8080
CMD ["./go-fibonacci-api"]