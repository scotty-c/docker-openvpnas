FROM ubuntu:14.04

MAINTAINER Scott Coulton "https://github.com/scotty-c/docker-openvpn"

CMD ["/bin/bash", "-l"]

RUN apt-get update && apt-get install -y wget iptables
RUN sudo wget http://swupdate.openvpn.org/as/openvpn-as-2.0.12-Ubuntu14.amd_64.deb  
RUN dpkg -i openvpn-as-2.0.12-Ubuntu14.amd_64.deb 
RUN echo "openvpn:password1234" | chpasswd


EXPOSE 443/tcp 1194/udp 943/tcp

CMD ["/usr/local/openvpn_as/scripts/openvpnas", "-n"]

