#!/bin/bash
NAME="wireguard_socks5"
docker stop $NAME && docker rm $NAME
