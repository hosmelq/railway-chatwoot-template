FROM chatwoot/chatwoot:latest-ce@sha256:3681f912af9cd5807d3899336a2a939d2b5dbe0506ceadf5f42334ed2e894a21

RUN apk add --no-cache multirun

COPY --chmod=755 start.sh /start.sh

ENTRYPOINT ["/bin/sh"]
CMD ["/start.sh"]
