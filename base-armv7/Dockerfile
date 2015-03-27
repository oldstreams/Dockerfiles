FROM greatfox/archlinux-armv7
MAINTAINER Liang Dong <greatfox@gmail.com>

RUN pacman-db-upgrade
RUN pacman -Syu --noconfirm
RUN echo 'root:MustChange' | chpasswd

RUN /usr/bin/ssh-keygen -f /etc/ssh/ssh_host_rsa_key -N '' -t rsa
RUN /usr/bin/ssh-keygen -f /etc/ssh/ssh_host_dsa_key -N '' -t dsa
RUN /usr/bin/ssh-keygen -f /etc/ssh/ssh_host_ecdsa_key -N '' -t ecdsa
RUN /usr/bin/ssh-keygen -f /etc/ssh/ssh_host_ed25519_key -N '' -t ed25519
RUN echo "/usr/bin/sshd" >> /initrc

RUN echo "en_US.UTF-8 UTF-8" >> /etc/locale.gen
RUN locale-gen en_US.UTF-8
ENV LANG en_US.UTF-8
ENV LANGUAGE en_US:en
ENV LC_ALL en_US.UTF-8
ENV TZ Asia/Shanghai

EXPOSE 22
CMD ["/bin/bash", "--rcfile", "/initrc"]
