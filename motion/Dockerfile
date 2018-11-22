FROM  alpine:3.7
WORKDIR /motion
ENV TZ America/Los_Angeles
RUN apk add motion=4.1.1-r0 tzdata \
    --update \
    --no-cache \
    --repository http://dl-3.alpinelinux.org/alpine/edge/testing/ \
    --allow-untrusted

ENTRYPOINT [ "motion" ]
