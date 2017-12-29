FROM alpine:3.7
COPY qemu-*-static /usr/bin/
COPY piu-piu /root/
WORKDIR /root
RUN apk add bash --update --no-cache
ENTRYPOINT ["/root/piu-piu"]
