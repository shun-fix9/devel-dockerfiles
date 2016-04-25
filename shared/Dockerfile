FROM busybox
MAINTAINER shun

COPY /home/sakai /home/sakai
RUN chown 1000.1000 -R /home/sakai && \
    chmod 700 /home/sakai/.git-post && \
    chmod 700 /home/sakai/.ssh

VOLUME ["/home/sakai/.git-post","/home/sakai/.ssh"]
