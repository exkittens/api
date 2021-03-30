FROM elixir:1.11.4

# Create and set home directory
WORKDIR /app

# Install hex (Elixir package manager) and rebar (Erlang build tool)
RUN mix local.hex --force && mix local.rebar --force

# Copy all application files
COPY . .

ENTRYPOINT ["./docker-entrypoint.sh"]
