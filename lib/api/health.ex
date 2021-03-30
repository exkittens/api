defmodule Api.Health do
  alias Api.Repo
  alias Ecto.Adapters.SQL

  @moduledoc false
  @spec database_ok? :: boolean
  def database_ok? do
    SQL.query(Repo, "SELECT 1", [])
    true
  rescue
    _ -> false
  end
end
