# Introduction
Docker-compose run docker image gitlab/gitlab-runner:v1.1.0

## Source
https://github.com/gitlab/gitlab-runner

## Version
Current Version: v1.1.0

## Maintainer
### Vincent
### Vincentlinsanity@gmail.com

```
GitlabCIMultiRunner:
  image: gitlab/gitlab-runner:v1.1.0
  volumes:
    - Assets/data:/etc/gitlab-runner
    - /run/docker.sock:/var/run/docker.sock
  restart: always
```

# Gitlab Setting
If you want to add runner in your project, please add .gitlab-ci.yml to root path

for example:
```
before_script:
  - npm install
stages:
  - test

test:
  stage: test
  image: node:argon
  service:
    - mongo: latest
  script:
    - apt-get update -qq
    - apt-get install -y -qq libkrb5-dev
    - npm test
  only:
    - master
  tags:
    - node-4.5.0
```

# Quick Start
```bash
$ cd /home/docker/compose/
$ git clone https://github.com/VincentLinsanity/docker-gitlab-runner.git
```

run docker-compose

```bash
$ cd docker-gitlab-runner/
$ docker-compose up -d
$ docker exec -ti gitlab/gitlab-runner sh /etc/gitlab-runner/setup.sh
```