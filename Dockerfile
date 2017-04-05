# Dockerfile for ldap-account-manager
# Version 0.0.1
FROM debian:latest

MAINTAINER Claudio Walser <claudio.walser@srf.ch>

RUN apt-get update && apt-get upgrade -y; \
	apt-get install -y ldap-account-manager;

CMD /usr/sbin/service apache2 start && /bin/bash