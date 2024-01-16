FROM ubuntu:latest as base
RUN apt-get update && apt-get install gnupg -y
COPY decrypt.sh /usr/local/bin/
RUN chmod a+x /usr/local/bin/decrypt.sh
WORKDIR /var/www
CMD ["/usr/local/bin/decrypt.sh"]