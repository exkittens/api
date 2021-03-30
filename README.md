## Project Setup

### Install docker
### Clone the repository
```shell
git clone git@github.com:exkittens/api.git
cd api
```
### Update ENV variables
```shell
cp .env.example .env
vi .env
```
### Build image
```shell
make build
```
### Start app using docker compose/swarm
```shell
docker-compose up
docker stack deploy -c docker-compose.yml exkittens
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
