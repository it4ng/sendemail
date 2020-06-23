FROM alpine:latest

RUN apk update && \
    apk add bash && rm -rf /var/cache/apk/*

RUN wget http://caspian.dotconf.net/menu/Software/SendEmail/sendEmail-v1.56.tar.gz -P /tmp/ && \
    tar -xzvf /tmp/sendEmail-v1.56.tar.gz -C /tmp/ && \
    cp -a /tmp/sendEmail-v1.56/sendEmail /usr/local/bin && \
    rm -rf /tmp/sendEmail*
