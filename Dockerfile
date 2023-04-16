FROM alpine:3.17

LABEL version="1.4"
LABEL maintainer="EMH333" \
      org.label-schema.vendor="EMH333" \
      com.github.actions.name="RSyncer Action" \
      com.github.actions.description="This action syncs files with a remote server." \
      com.github.actions.icon="truck" \
      com.github.actions.color="blue"

RUN apk add --no-cache rsync openssh

COPY entrypoint.sh /entrypoint.sh

ENTRYPOINT ["/entrypoint.sh"]
