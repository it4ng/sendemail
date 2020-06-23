FROM debian:latest

RUN apt-get update && apt-get install -y sendemail

COPY sendmail /usr/local/bin/
RUN chmod +x /usr/local/bin/sendmail
