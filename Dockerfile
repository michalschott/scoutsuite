FROM alpine:3.19

ENV SCOUTSUITE_VERSION=5.0.post3

VOLUME ["/report"]

RUN apk upgrade --no-cache && \
    apk add --no-cache python3 && \
    apk add --no-cache --virtual build_deps make g++ gcc musl-dev libffi-dev openssl-dev python3-dev && \
    pip3 install --upgrade pip && \
    pip3 install scoutsuite==$SCOUTSUITE_VERSION && \
    apk del build_deps

WORKDIR /report

CMD scout aws
