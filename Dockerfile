FROM chatwoot/chatwoot:latest-ce@sha256:f322cd0f620a54d7288de013256d098e3e60c2ad06ed32a5926cb02c90f68576

RUN apk add --no-cache multirun

COPY --chmod=755 start.sh /start.sh

ENTRYPOINT ["/bin/sh"]
CMD ["/start.sh"]
