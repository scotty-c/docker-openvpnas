#Openvpn Access Server
scottyc/openvpn

A Openvpn Access Server running in a Ubuntu 14.04 docker container.

[`scottyc/openvpn`](https://registry.hub.docker.com/u/scottyc/openvpnas/)

##Running

Create a Dockerfile in your project ```FROM``` scottyc/openvpn or

##Building
```
docker run -d -P --name=openvpn scottyc/openvpn

```
Then login to ```https://dockerhostip:containerport/admin```
Username is openvpn password is password1234 (you might want to change that !!!)