!#/bin/bash

docker build -t slurm-docker-master:19.05.1 master/
docker build -t slurm-docker-node:19.05.1 node/    