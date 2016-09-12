# docker-gobgp-alpine

The Alpine based Docker image for GoBGP(https://github.com/osrg/gobgp)

## Docker Pull Command

Download from [Docker Hub](https://hub.docker.com/)

`$ docker pull iwaseyusuke/gobgp-alpine`

## Docker Run Command

`$ docker run -it --rm iwaseyusuke/gobgp-alpine`

## Docker Compose

If you have installed [Docker Compose](https://docs.docker.com/compose/),
you can run container with:

```
$ wget https://github.com/iwaseyusuke/docker-gobgp-alpine/raw/master/docker-compose.yml

$ docker-compose run --rm gobgp-alpine
```
