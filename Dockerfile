# Production Dockerfile for Golang
FROM golang:1.17 as build
WORKDIR /app
COPY . /app
RUN go mod download
RUN go build -o main .

FROM golang:1.17
EXPOSE 4000
CMD /app/main
