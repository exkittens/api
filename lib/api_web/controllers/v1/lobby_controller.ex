defmodule ApiWeb.V1.LobbyController do
  use ApiWeb, :controller

  alias Api.Game.Lobby
  alias Api.Game
  alias Api.Repo

  def index(conn, _params) do
    lobbies = Game.list_lobbies
    render(conn, "index.json", lobbies: lobbies) 
  end

  # curl -X POST http://localhost:4000/api/v1/lobbies -H "Content-Type: application/json" -d '{"lobby": {"name": "From cURL", "topic": "Create test topic"}}'
  def create(conn, %{"lobby" => lobby_params}) do
    case Game.create_lobby(lobby_params) do
      {:ok, lobby} -> 
        conn
        |> render("show.json", lobby: lobby)
    end
  end
end
