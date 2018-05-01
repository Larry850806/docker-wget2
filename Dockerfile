FROM alpine:3.7
RUN apk add --no-cache aria2 && mkdir /download
VOLUME ["/download"]
ENTRYPOINT ["aria2c", "-d /download", "-s 16", "-x 16", "-c", "--file-allocation=none"]