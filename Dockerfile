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

RUN useradd -s /bin/bash sakai && \
	usermod -aG sudo sakai && \
	echo '%sudo	ALL=(ALL:ALL) NOPASSWD: ALL' > /etc/sudoers.d/sudo-nopasswd && \
	mkdir -p /home/sakai/bin && \
	chown sakai.sakai -R /home/sakai

COPY development-environment-setup /home/sakai/bin
COPY docker-entrypoint.sh /usr/local/bin

EXPOSE 22

ENTRYPOINT ["docker-entrypoint.sh"]
CMD ["/usr/sbin/sshd","-D"]
