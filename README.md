# docker-samba

## Introduction

This is the SAMBA server with Docker image repository.

## Usage

- Firstly, downloading the Docker image via following command:

```BASH
# Download latest version
docker pull peter279k/docker-samba:latest

# Download specific released version
docker pull peter279k/docker-samba:v1.0
```

- Secondly, using following command to setup SAMBA server:

The port numbers should be specified and volume SAMBA directory should be specified, too.

```BASH
docker run -d -p 1399:139 -p 4455:445 -p 1377:137 -p 1388:138 -v /path/to/samba/folder:/srv/private peter279k/docker-samba:latest "SAMBA_USER" "SAMBA_PASS"
```

## Docker image build

Of course, it can allow developers to build this image manually:

```BASH
docker build -t peter-docker-samba .
```

## References

The following references is to help this Docker image to build well :).

- [install-samba-server-ubuntu-16-04](https://www.linuxbabe.com/ubuntu/install-samba-server-ubuntu-16-04)
