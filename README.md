# Docker Compose Slurm cluster

Install docker and compose plugin:

- [Docker Install](https://docs.docker.com/get-docker/)
- [Compose plugin](https://docs.docker.com/compose/install/)

Build the images, in the current directory:

```bash
sudo bash build-images.sh
```

Modify [docker-compose.yaml](docker-compose.yaml) using your custom path for `sudoers`, `.fractal_server.env` and `alembic.ini`, which are into [config](./config/)

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