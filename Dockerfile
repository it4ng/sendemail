FROM debian:latest

RUN apt-get update && apt-get install -y sendemail
RUN apt-get install -y curl

COPY sendmail /usr/local/bin/
RUN chmod +x /usr/local/bin/sendmail

COPY checkdeployment /usr/local/bin/
RUN chmod +x /usr/local/bin/checkdeployment


