FROM ghcr.io/elfhosted/alpine:rolling@sha256:043ca9795aed0ef8a8b1d05c4c652dcaaa45fecf66f57d46aec36b93bd7bc693
ARG VERSION
RUN apk update && \
	apk add --no-cache --update bash && \
	mkdir -p /aria2-ng && \
	mkdir -p /usr/local/nginx/html && \
	apk add --no-cache wget && \
    wget https://github.com/mayswind/AriaNg/releases/download/${VERSION}/AriaNg-${VERSION}.zip -O /aria2-ng/archive.zip && \
    cd /aria2-ng && \
    unzip archive.zip && \
    rm archive.zip && \
    apk del wget && \
    apk add --update nginx && \
    rm -rf /var/cache/apk/*

ADD apps/ariang/files/nginx.conf /etc/nginx/nginx.conf
ADD apps/ariang/entrypoint.sh /

ENTRYPOINT [ "/entrypoint.sh" ]