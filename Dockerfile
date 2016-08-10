FROM ubuntu:14.04

MAINTAINER Scott Coulton "https://github.com/scotty-c/docker-openvpn"

USER root

RUN apt-get update && apt-get install -y wget iptables && \
    sudo wget http://swupdate.openvpn.org/as/openvpn-as-2.1.2-Ubuntu14.amd_64.deb && \ 
    dpkg -i openvpn-as-2.1.2-Ubuntu14.amd_64.deb && \
    echo "openvpn:password1234" | chpasswd


EXPOSE 443/tcp 1194/udp 943/tcp

VOLUME ["/usr/local/openvpn_as"]

CMD ["/usr/local/openvpn_as/scripts/openvpnas", "-n"]

