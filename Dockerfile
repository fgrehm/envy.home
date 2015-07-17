FROM ubuntu:14.04
RUN apt-get update \
    && apt-get install -y \
                       vim \
		       htop \
		       curl \
		       wget \
		       tmux \
		       git \
		       make \
		       bash \
		       bash-completion \
    && apt-get clean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

RUN curl -sL https://get.docker.io/builds/Linux/x86_64/docker-1.6.2 > /usr/bin/docker \
    && chmod +x /usr/bin/docker

ENTRYPOINT /bin/bash
WORKDIR /workspace
