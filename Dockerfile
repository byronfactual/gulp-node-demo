FROM node:wheezy
MAINTAINER Byron Lutz <byronlutz@gmail.com>

RUN apt-get update
RUN apt-get install -y git
RUN mkdir /root/.ssh
RUN echo "IdentityFile ~/.ssh/id_rsa" >> /etc/ssh/ssh_config
RUN ssh-keyscan bitbucket.org >> ~/.ssh/known_hosts

RUN mkdir /factual
ADD start.sh /factual/start.sh
RUN chmod +x /factual/start.sh
WORKDIR /factual

EXPOSE 8080

CMD ["bash", "start.sh"]
