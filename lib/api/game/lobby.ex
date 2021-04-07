defmodule Api.Game.Lobby do
  use Ecto.Schema
  import Ecto.Changeset
  alias Api.Game.Lobby

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "lobbies" do
    field :name, :string
    field :topic, :string

    timestamps()
  end

  @doc false
  def changeset(%Lobby{} = lobby, attrs) do
    lobby
    |> cast(attrs, [:name, :topic])
    |> validate_required([:name])
    |> unique_constraint(:name)
    |> validate_length(:name, min: 5, max: 30)
    |> validate_length(:topic, min: 5, max: 120)
  end
end
