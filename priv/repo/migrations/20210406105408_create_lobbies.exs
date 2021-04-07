defmodule Api.Repo.Migrations.CreateLobbies do
  use Ecto.Migration

  def change do
    create table(:lobbies, primary_key: false) do
      add :id, :binary_id, primary_key: true
      add :name, :string, null: false, size: 30
      add :topic, :string, size: 120

      timestamps()
    end

  end
end
