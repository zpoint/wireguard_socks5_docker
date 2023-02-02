#!/bin/bash
IMAGE="wireguard_socks5"
docker stop $IMAGE && docker rm $IMAGE
