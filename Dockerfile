FROM elixir:1.11.4

# Create and set home directory
WORKDIR /app

# Install hex (Elixir package manager) and rebar (Erlang build tool)
RUN mix local.hex --force && mix local.rebar --force

# Copy all application files
COPY . .

ADD https://github.com/ufoscout/docker-compose-wait/releases/download/2.8.0/wait /wait
RUN chmod +x /wait
ENV WAIT_HOSTS="db:5432"

ENTRYPOINT ["./docker-entrypoint.sh"]
