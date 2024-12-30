ARG SOURCE_IMAGE="vauxite"
ARG SOURCE_SUFFIX="main"
ARG SOURCE_TAG="latest"

FROM ghcr.io/ublue-os/${SOURCE_IMAGE}-${SOURCE_SUFFIX}:${SOURCE_TAG}

COPY rootfs /

RUN --mount=type=bind,source=.,target=/src mkdir -p /var/lib/alternatives && \
    /src/build.sh && \
    ostree container commit

