FROM golang:1.15

WORKDIR /go/src/
COPY . .

RUN go get -d -v ./...
RUN go install -v ./...
RUN GOOS=linux go build

ENTRYPOINT [ "./main" ]