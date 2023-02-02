#!/bin/bash

NAME="wireguard_socks5"
IMAGE="wireguard_socks5_img"

# Start container (if not already started)
if [ ! "$(docker ps -q -f name=NAME)" ]; then

    docker run \
    --hostname "${NAME}" \
    --name "${NAME}" \
    --privileged \
    --detach \
    -p 9050:1080 \
    --volume "$(pwd)/config/wg0.conf:/etc/wireguard/wg0.conf" \
    --volume "$(pwd)/config/danted.conf:/etc/danted.conf" \
    --entrypoint "/bin/bash -c 'start'" \
    $IMAGE

fi

