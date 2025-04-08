FROM ubuntu:22.04

ENV DEBIAN_FRONTEND=noninteractive
ENV LANG en_US.UTF-8

RUN apt-get update && \
    apt-get install -y \
        clang \
        llvm \
        libbpf-dev \
        libelf-dev \
        zlib1g-dev \
        linux-headers-generic \
        linux-tools-generic \
        make \
        gcc \
        git \
        bpfcc-tools \
        libbpfcc \
        libbpfcc-dev \
        curl \
        ca-certificates && \
    ln -s /usr/lib/linux-tools/*/bpftool /usr/local/bin/bpftool || true && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*


WORKDIR /home
CMD ["/bin/bash"]
