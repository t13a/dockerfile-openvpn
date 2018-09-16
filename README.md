# OpenVPN

Dockerfile for [OpenVPN](https://openvpn.net/), an open source VPN daemon. Based on [Alpine Linux](https://alpinelinux.org/).

# Getting started

Since this image is packages just has been installed, you need to specify the valid configuration file yourself.

```sh
$ docker run --rm \
--cap-add NET_ADMIN \
--device /dev/net/tun \
-v $(pwd)/openvpn.conf:/openvpn.conf \
t13a/openvpn
```

You can also add files and set command line arguments.

```sh
$ docker run --rm \
...
-v $(pwd)/account.txt:/account.txt \
...
t13a/openvpn \
openvpn \
--config /openvpn.conf \
--auth-user-pass /account.txt
```
