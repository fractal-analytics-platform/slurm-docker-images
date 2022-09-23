FROM rancavil/slurm-master:19.05.5-1

RUN apt-get update
RUN apt-get install -y openssh-server

RUN adduser test0
# RUN usermod -aG users test0
RUN echo "test0:pwd_test0" | chpasswd

RUN sed 's@session\s*required\s*pam_loginuid.so@session optional pam_loginuid.so@g' -i /etc/pam.d/sshd

# Prepare ssh server
RUN echo "#!/bin/bash" > /home/entrypoint.sh
RUN echo sudo ssh-keygen -A >> /home/entrypoint.sh
RUN echo sudo service ssh start >> /home/entrypoint.sh

# Add user to slurm
RUN echo "sacctmgr create account name=test0" >> /home/entrypoint.sh
RUN echo "sacctmgr create user test0 account=test0" >> /home/entrypoint.sh

RUN cat /etc/slurm-llnl/docker-entrypoint.sh >> /home/entrypoint.sh
RUN chmod +x /home/entrypoint.sh

EXPOSE 50097

ENTRYPOINT ["/home/entrypoint.sh"]
