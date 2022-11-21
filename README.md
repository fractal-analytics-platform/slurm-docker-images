# Docker Compose Slurm cluster

Install docker and compose plugin:

- [Docker Install](https://docs.docker.com/get-docker/)
- [Compose plugin](https://docs.docker.com/compose/install/)

Build the images, in the current directory:

```bash
sudo bash build-images.sh
```

Then run the cluster, execute this command in the current directory:

```bash
sudo docker compose up -d
```

