#!/bin/bash

mix deps.get --only prod

mix ecto.create
mix ecto.migrate

mix phx.server
