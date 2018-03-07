# docker run --name dnsmasq -d --restart=unless-stopped -p 53:53 -p 53:53/udp dnsmasq
FROM alpine:latest
RUN apk update && \
    apk add dnsmasq
COPY dnsmasq.conf /etc/dnsmasq.conf
EXPOSE 53 53/udp
ENTRYPOINT ["dnsmasq", "-d"]