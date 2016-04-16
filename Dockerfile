FROM ubuntu:14.04
MAINTAINER Eugene Greendrake (eugene@greendrake.info)
RUN \
  apt-get update && \
  apt-get install -y nano nginx telnet net-tools && \
  apt-get autoremove && \
  apt-get clean && \
  echo "\ndaemon off;" >> /etc/nginx/nginx.conf
CMD ["nginx"]
EXPOSE 80 443