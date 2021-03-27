## Project Setup

### Install Elixir, Phoenix, PostgreSQL
### Clone the repository
```shell
git clone git@github.com:exkittens/api.git
cd api
```
### Update ENV variables
```shell
vi .env
source .env
```
### Install dependencies and setup database
```shell
mix deps.get
mix setup
```
### Start app
```shell
mix phx.server
```

Now you can visit [`localhost:4000`](http://localhost:4000) from your browser.
