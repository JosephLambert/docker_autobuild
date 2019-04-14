FROM    centos:6.7
MAINTAINER      yanlei93 "478911359@qq.com"

RUN     /bin/echo 'root:123456' |chpasswd
RUN     useradd yanlei
RUN     /bin/echo 'yanlei:123456' |chpasswd
RUN     /bin/echo -e "LANG=\"en_US.UTF-8\"" &gt; /etc/default/local
EXPOSE  22
EXPOSE  80
CMD     /usr/sbin/sshd -D
