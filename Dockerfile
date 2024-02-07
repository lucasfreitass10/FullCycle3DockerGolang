FROM golang:alpine as compiler
WORKDIR /app
COPY ./go .
RUN go build -o /main main.go

FROM scratch
COPY --from=compiler /main /main
EXPOSE 8080
ENTRYPOINT ["/main"]