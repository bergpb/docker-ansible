FROM python:3.9.5-alpine as base

FROM base as builder

RUN pip3 install --upgrade pip

RUN apk add --update-cache \
    gcc \
    musl-dev \
    python3-dev \
    libffi-dev \
    openssl-dev \
    cargo \
    && rm -rf /var/cache/apk/*

RUN pip3 install --prefix=/install \
    ansible --no-warn-script-location

FROM base

COPY --from=builder /install /usr/local
