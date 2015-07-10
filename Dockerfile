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

RUN wget -qO- https://get.docker.com/ | sh \
    && apt-get clean \
    && apt-get autoremove \
    && rm -rf /var/lib/apt/lists/*

ENTRYPOINT /bin/bash
