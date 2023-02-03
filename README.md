# Wireguard SOCKS5 Proxy

Host <-> socks5 <-> Docker container <-> Wireguard

---

## Setup

Build the container

	bash ./build.sh

## Usage

Pasted your `wg0.conf` config file in the `./config/wg0.conf`.
Consult your vpn vendor for config file, mine is [PureVPN](https://support.purevpn.com/article-categories/getting-started/linux)

Start the container and runs the server

	bash ./start.sh

Test if it works on your **host** after starts the server

	bash ./test.sh

Stop the container and stop the server

	bash ./stop.sh

---

## Implementation

The container simply has an OpenVPN installation and a network interface `wg0` for it.

[Dante SOCKS Server](https://www.inet.no/dante/) is used. It listens on `eth0` (the network from the host PC) and connects to this `wg0` network (the OpenVPN network).


## Troubleshooting


Attach to container

    bash ./shell.sh

Check `danted`'s log

    vim /var/log/danted/danted.log

Check if `wg0` in `ifconfig` list, if not, manually start wireguard

    sudo wg-quick up wg0

and stop 

    sudo wg-quick down wg0

to see the error output
