build:   ## Build or update local docker image
	@docker image build -t exkittens .

deploy:  ## Deploy app in Docker swarm
	@docker stack deploy --compose-file docker-compose.yml exkittens

destroy: ## Docker stack rm
	@docker stack rm exkittens

delete:  ## Delete docker images
	@docker images prune
	@docker rmi exkittens --force
	@docker rmi elixir:1.11.4 --force

help:    ## Show this help.
	@fgrep -h "##" $(MAKEFILE_LIST) | fgrep -v fgrep | sed -e 's/\\$$//' | sed -e 's/##//'
