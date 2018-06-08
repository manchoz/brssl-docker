FROM alpine:latest as build

RUN set -ef \
    && apk add --update --no-cache curl git build-base

RUN set -ef \
    && git clone https://www.bearssl.org/git/BearSSL \
    && cd BearSSL \
    && make


FROM alpine:latest
LABEL maintainer="Giampaolo Mancini <giampaolo@trampolineup.com>"

COPY --from=build /BearSSL/build/brssl /brssl

WORKDIR /certs
ENTRYPOINT [ "/brssl" ]
