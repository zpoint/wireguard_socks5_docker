FROM debian:sid

RUN apt-get update && \
    apt-get install -y \
    net-tools \
    wireguard \
    dante-server \
    sudo \
    iproute2 \
    vim \
    curl \
    openresolv \
    && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* \

RUN echo 'start() { sudo wg-quick up wg0; }' >> ~/.bashrc && \
    echo "stop() { sudo wg-quick down wg0; }" >> ~/.bashrc && \
    echo "Done"
