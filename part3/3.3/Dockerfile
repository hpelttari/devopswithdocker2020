FROM ubuntu:18.04

WORKDIR /mydir

RUN apt-get update && apt-get upgrade -y && \
    apt-get install -y git \
    apt-transport-https \
    ca-certificates \
    curl \
    gnupg-agent \
    software-properties-common

RUN curl -fsSL https://download.docker.com/linux/ubuntu/gpg | apt-key add - &&\ 
    add-apt-repository \
   "deb [arch=amd64] https://download.docker.com/linux/ubuntu \
   $(lsb_release -cs) \
   stable" && apt-get install -y docker-ce \
   docker-ce-cli \
   containerd.io

ARG DOCKER_USERNAME=""
ARG DOCKER_PASSWORD=""
RUN docker login -u=${DOCKER_USERNAME} -p=${DOCKER_PASSWORD}

COPY ./repo_downloader.sh /mydir/

ENTRYPOINT ["/mydir/repo_downloader.sh"]
