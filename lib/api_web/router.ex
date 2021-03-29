defmodule ApiWeb.Router do
  use ApiWeb, :router

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/api", ApiWeb do
    pipe_through :api

    scope "/v1", V1 do
      get "/health", HealthController, :index
    end
  end
end
