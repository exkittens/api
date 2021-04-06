defmodule Api.Game do
  alias Api.Repo
  alias Api.Game.Lobby

  def list_lobbies do
    Repo.all(Lobby)
  end 

  def create_lobby(attrs \\ %{}) do
    %Lobby{}
    |> Lobby.changeset(attrs)
    |> Repo.insert()
  end
end
