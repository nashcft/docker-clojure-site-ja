FROM ubuntu:bionic

ENV DEBIAN_FRONTEND noninteractive

RUN apt-get update \
    && apt-get install -y \
        curl make ssh ca-certificates unzip git \
        openjdk-8-jdk python3-dev python3-pip \
        po4a \
    && apt-get clean all \
    && rm -rf /var/lib/apt/lists/*

CMD ["/bin/bash"]