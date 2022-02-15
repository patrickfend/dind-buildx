FROM docker:20.10-dind
RUN apk -U upgrade
COPY --from=docker/buildx-bin:latest /buildx /usr/libexec/docker/cli-plugins/docker-buildx
RUN docker buildx version
