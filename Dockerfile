FROM python:3.9.5-alpine

RUN pip3 install --upgrade pip

RUN apk add --update-cache \
    gcc \
    musl-dev \
    python3-dev \
    libffi-dev \
    openssl-dev \
    cargo \
    && rm -rf /var/cache/apk/*

RUN pip3 install ansible

