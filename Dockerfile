FROM chatwoot/chatwoot:latest-ce@sha256:32da442b23a613f573e546da4cc5b68d89e342ef7c5ee5859161841eb7c40cc7

RUN apk add --no-cache multirun

COPY --chmod=755 start.sh /start.sh

ENTRYPOINT ["/bin/sh"]
CMD ["/start.sh"]
