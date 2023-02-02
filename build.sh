#!/bin/bash
# docker run --name wireguard_socks5 -e LANG=C.UTF-8 --network host -it debian:sid /bin/bash -l
# export https_proxy=http://host.docker.internal:7890 http_proxy=http://host.docker.internal:7890 all_proxy=socks5://host.docker.internal:7890
# docker run --name wireguard_socks5 -e LANG=C.UTF-8 -it --privileged zpoint/proxy:wireguard_socks5 /bin/bash -l

docker build -t "wireguard_socks5_img" .
