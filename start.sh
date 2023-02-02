#!/bin/bash

NAME="wireguard_socks5"
IMAGE="wireguard_socks5_img"

docker run \
--hostname "${NAME}" \
--name "${NAME}" \
--privileged \
--detach \
--interactive \
-p 9050:1080 \
--volume "$(pwd)/config/wg0.conf:/etc/wireguard/wg0.conf" \
--volume "$(pwd)/config/danted.conf:/etc/danted.conf" \
$IMAGE

docker exec \
	$NAME \
	/bin/bash -c 'start'


