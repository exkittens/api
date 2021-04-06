defmodule ApiWeb.V1.LobbyView do
  use ApiWeb, :view

  alias Api.Lobby

  def render("index.json", %{lobbies: lobbies}) do
    %{
      lobbies: Enum.map(lobbies, &lobby_json/1)
    }
  end

  def render("show.json", %{lobby: lobby}) do
    %{
      id: lobby.id,
      name: lobby.name,
      topic: lobby.topic
    }
  end

  def lobby_json(lobby) do
    %{
      id:          lobby.id,
      name:        lobby.name,
      topic:       lobby.topic,
      # inserted_at: lobby.inserted_at,
      # updated_at:  lobby.updated_at
    }
  end
end
