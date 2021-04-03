#!/bin/bash

mix deps.get --only prod

/wait

mix ecto.create
mix ecto.migrate

mix phx.server
