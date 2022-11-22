FROM rancavil/slurm-node:19.05.5-1

RUN pip3 install parsl==1.3.0dev1 clusterfutures==0.4
COPY slurm.conf /etc/slurm-llnl/

ENTRYPOINT ["/etc/slurm-llnl/docker-entrypoint.sh"]
