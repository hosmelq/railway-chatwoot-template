FROM chatwoot/chatwoot:latest-ce@sha256:1723a8385ff9495ae71d80a913d142d062db6798c996547be3ff0be602de34b0

RUN apk add --no-cache multirun

COPY --chmod=755 start.sh /start.sh

ENTRYPOINT ["/bin/sh"]
CMD ["/start.sh"]
