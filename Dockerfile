FROM debian:stable-slim
MAINTAINER Yongsheng Xu <chuxdesign@hotmail.com>

LABEL "com.github.actions.name"="Zola Deploy to Server"
LABEL "com.github.actions.description"="Build and deploy a Zola site to Your Server"
LABEL "com.github.actions.color"="green"

# Set default locale for the environment
ENV LC_ALL C.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US.UTF-8

RUN apt-get update && apt-get install -y wget openssh-client

RUN wget -q -O - \
"https://github.com/getzola/zola/releases/download/v0.14.1/zola-v0.14.1-x86_64-unknown-linux-gnu.tar.gz" \
| tar xzf - -C /usr/local/bin

COPY entrypoint.sh /entrypoint.sh

RUN ["chmod", "+x", "/entrypoint.sh"]
ENTRYPOINT ["/entrypoint.sh"]
