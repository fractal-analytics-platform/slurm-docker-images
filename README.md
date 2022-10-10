# Docker Compose Slurm cluster

Install docker and compose plugin:

- [Docker Install](https://docs.docker.com/get-docker/)
- [Compose plugin](https://docs.docker.com/compose/install/)

Modify [docker-compose.yaml](docker-compose.yaml) using your path for `sudoers`, `.fractal_server.env` and `alembic.ini`

Then run the cluster, execute this command in the current directory:

```bash
sudo docker compose up -d
```

Check that server is up and running with `/alive` endpoint:

```bash
curl 127.0.0.1:8000/alive
```

Check all the containers are running:

```bash
sudo docker ps -a
```