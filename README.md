# jupyter_EITCA

## Development

### Requirements
The following applications have to be installed

- docker-ce - Docker: the open-source application container engine
- docker-ce-cli - Docker CLI: the open-source application container engine
- docker-ce-rootless-extras - Rootless support for Docker
- docker-scan-plugin - Docker scan cli plugin
- docker-compose

### Setup

1. Clone repository
    - `git clone git@github.com:gyorgybakocs/jupyter_EITCA.git`
2. Run `make provision` to build the docker image and start the container

### Running Development env

- Run `make up` to start the container
- on the console you can find
    - the token to access the jupyter notebook
    - the url to access the jupyter notebook (eg: http://127.0.0.1:8888/tree?token=ceac3077cfdadd7972e5afc579e33062de5b06b1824530f4)