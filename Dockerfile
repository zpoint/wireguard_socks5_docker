FROM debian:11.0

RUN apt-get update && \
    apt-get install -y \
    net-tools \
    wireguard \
    dante-server \
    sudo \
    iproute2 \
    procps \
    vim \
    curl \
    openresolv \
    wireguard-dkms \
    wireguard-tools \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/*

RUN mkdir /var/log/danted/
RUN echo 'start() { sudo wg-quick up wg0; danted -D; }' >> ~/.bashrc && \
    echo 'stop() { sudo wg-quick down wg0; killall danted; }' >> ~/.bashrc && \
    echo "Done"
