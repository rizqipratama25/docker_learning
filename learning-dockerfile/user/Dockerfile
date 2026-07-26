FROM golang:1.18-alpine

RUN mkdir /app

RUN addgroup -S verdkogroup
RUN adduser -S -D -h /app verdkouser verdkogroup
RUN chown -R verdkouser:verdkogroup /app

USER verdkouser

COPY main.go /app

EXPOSE 8080

CMD ["go", "run", "/app/main.go"]