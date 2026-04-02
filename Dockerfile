FROM chatwoot/chatwoot:latest-ce

RUN apk add --no-cache multirun

COPY --chmod=755 start.sh /start.sh

ENTRYPOINT ["/bin/sh"]

CMD ["/start.sh"]
