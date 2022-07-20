FROM alpine:latest

ENV PYTHONUNBUFFERED=1
ENV TZ="Asia/Tehran"

RUN apk update \
    && apk add --update --no-cache python3 py3-pip rsyslog rsyslog-tls ca-certificates bash curl less groff jq openssl lftp ncftp tzdata\
    && pip3 install --upgrade pip \
    && pip3 install --no-cache-dir s3cmd
