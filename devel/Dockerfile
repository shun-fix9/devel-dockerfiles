FROM ubuntu:14.04
MAINTAINER shun

RUN set -x && \
    apt-get update && \
    apt-get install -y \
        bash-completion \
        curl \
        git \
        language-pack-ja \
        language-pack-ja-base \
        man \
        manpages-dev \
        ssh \
        unzip \
        vim \
        && \
    apt-get clean

COPY /home/sakai /home/sakai
RUN useradd -s /bin/bash sakai && \
    usermod -aG sudo sakai && \
    echo '%sudo	ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers.d/sudo-nopasswd && \
    chown sakai.sakai -R /home/sakai

USER sakai

COPY development-environment-setup /usr/local/bin
RUN development-environment-setup

USER root

COPY docker-entrypoint.sh /usr/local/bin

EXPOSE 22

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/sbin/sshd","-D"]
