defmodule Api.Application do
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      Api.Repo,
      ApiWeb.Telemetry,
      {Phoenix.PubSub, name: Api.PubSub},
      ApiWeb.Endpoint
    ]

    opts = [strategy: :one_for_one, name: Api.Supervisor]
    Supervisor.start_link(children, opts)
  end

  def config_change(changed, _new, removed) do
    ApiWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
