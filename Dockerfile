FROM golang

WORKDIR /

COPY . .
RUN go mod download


RUN go build -o demo-app demo.go

CMD [ "/demo-app" ]