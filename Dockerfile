FROM alpine:latest

RUN apk update && \
    apk add perl && \
    apk add bash && rm -rf /var/cache/apk/*

RUN wget http://caspian.dotconf.net/menu/Software/SendEmail/sendEmail-v1.56.tar.gz -P /tmp/ && \
    tar -xzvf /tmp/sendEmail-v1.56.tar.gz -C /tmp/ && \
    cp -a /tmp/sendEmail-v1.56/sendEmail /usr/local/bin && \
    rm -rf /tmp/sendEmail*
    
RUN chmod +x /usr/local/bin/sendEmail

COPY sendmail /usr/local/bin/
RUN chmod +x /usr/local/bin/sendmail
