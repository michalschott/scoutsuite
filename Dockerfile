FROM alpine:3.9

ENV SCOUTSUITE_VERSION=5.0.post3

VOLUME ["/report"]

RUN apk update && \
    apk add make g++ gcc \
            musl-dev libffi-dev openssl-dev python3 python3-dev \
      && \
    pip3 install --upgrade pip && \
    pip3 install scoutsuite==$SCOUTSUITE_VERSION

WORKDIR /report

CMD scout aws
