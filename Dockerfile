FROM alpine
COPY qemu-*-static /usr/bin/
WORKDIR /root
RUN apk add bash --update --no-cache && \
apk add git --virtual .build-deps --update --no-cache && \
git clone https://github.com/vaniacer/piu-piu-SH && \
mv /root/piu-piu-SH/piu-piu /usr/bin/ && \
apk del git --purge .build-deps && \
rm -Rf /root/piu-piu-SH
EXPOSE 54321 54322
ENTRYPOINT ["piu-piu"]
