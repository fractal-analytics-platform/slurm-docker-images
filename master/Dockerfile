FROM rancavil/slurm-master:19.05.5-1

RUN apt-get update
RUN apt-get install -y openssh-server

RUN useradd -m test0 -s /usr/bin/bash -d /home/test0 && echo "test0:test0" | chpasswd
RUN useradd -m fractal -s /usr/bin/bash -d /home/fractal && echo "fractal:fractal" | chpasswd 

EXPOSE 50097

ENTRYPOINT ["/etc/slurm-llnl/docker-entrypoint.sh"]

