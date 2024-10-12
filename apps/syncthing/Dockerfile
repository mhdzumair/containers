ARG VERSION
FROM syncthing/syncthing:${VERSION} as upstream

FROM ghcr.io/elfhosted/alpine:rolling@sha256:043ca9795aed0ef8a8b1d05c4c652dcaaa45fecf66f57d46aec36b93bd7bc693 

COPY --from=upstream /bin/syncthing /bin/syncthing

EXPOSE 8384 22000/tcp 22000/udp 21027/udp

# VOLUME ["/media"]

#ENV HOME=/media

ENV STGUIADDRESS=0.0.0.0:8384

ENTRYPOINT ["/bin/syncthing", "--home", "/config", "--no-default-folder"]