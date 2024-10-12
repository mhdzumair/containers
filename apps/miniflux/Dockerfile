ARG VERSION
FROM ghcr.io/miniflux/miniflux:${VERSION} as upstream
FROM ghcr.io/elfhosted/alpine:rolling@sha256:043ca9795aed0ef8a8b1d05c4c652dcaaa45fecf66f57d46aec36b93bd7bc693 
COPY --from=upstream /usr/bin/miniflux /usr/bin/miniflux

ENV LISTEN_ADDR 0.0.0.0:8080
CMD ["/usr/bin/miniflux"]
