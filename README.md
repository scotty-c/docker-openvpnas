# Openvpn Access Server
scottyc/openvpn

A Openvpn Access Server running in a Ubuntu 16.04 docker container.

[`scottyc/openvpn`](https://registry.hub.docker.com/u/scottyc/openvpn/)

## Running

Create a Dockerfile in your project ```FROM``` scottyc/openvpn or

## Building
```
docker run -d -p 443:443 -p 943:943 -p 1194:1194/udp --privileged=true --name openvpn scottyc/openvpn

```
Then login to ```https://dockerhostip:943/admin```
Username is openvpn password is password1234 (you might want to change that !!!)
