#!/bin/bash

mix deps.get

/wait

mix ecto.create
mix ecto.migrate

mix phx.server
