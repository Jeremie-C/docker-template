# docker-template

![Docker Pulls](https://img.shields.io/docker/pulls/jeremiec82/debian-dev?style=plastic)
![Docker Image Size (latest by date)](https://img.shields.io/docker/image-size/jeremiec82/debian-dev?style=plastic)
[![Deploy to Docker Hub](https://github.com/Jeremie-C/docker-template/actions/workflows/deploy.yml/badge.svg)](https://github.com/Jeremie-C/docker-template/actions/workflows/deploy.yml)
[![Check Shell and Dockerfile](https://github.com/Jeremie-C/docker-template/actions/workflows/check_code.yml/badge.svg)](https://github.com/Jeremie-C/docker-template/actions/workflows/check_code.yml)
[![Test Docker Build](https://github.com/Jeremie-C/docker-template/actions/workflows/test_build.yml/badge.svg)](https://github.com/Jeremie-C/docker-template/actions/workflows/test_build.yml)

Template for my docker Containers

Debian Buster Slim with S6 overlay

## Environment Variables

### Container Options

| Variable | Description | Default |
|----------|-------------|---------|
| `TZ` | Local timezone in ["TZ database name" format](<https://en.wikipedia.org/wiki/List_of_tz_database_time_zones>). | `UTC` |
