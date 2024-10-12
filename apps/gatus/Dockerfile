ARG VERSION
FROM twinproduction/gatus:v${VERSION} as upstream

FROM ghcr.io/elfhosted/alpine:rolling@sha256:043ca9795aed0ef8a8b1d05c4c652dcaaa45fecf66f57d46aec36b93bd7bc693 

COPY --from=upstream /gatus /
COPY --from=upstream /config/config.yaml ./config/config.yaml

ENV PORT=8080
EXPOSE ${PORT}

ENTRYPOINT ["/gatus"]
