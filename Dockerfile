FROM alpine:3.4

COPY binaries.tar.gz .

RUN set -x \
 && tar zxf binaries.tar.gz \
 && cp binaries/Linux/intel/static/vlmcsd-x86-musl-static /usr/bin/vlmcsd \
 && chmod 0755 /usr/bin/vlmcsd \
 && rm -rf binaries/ binaries.tar.gz \
 && rm -rf /var/cache/apk/*

EXPOSE 1688

ENTRYPOINT ["/usr/bin/vlmcsd", "-D", "-e"]
