defmodule Api.User do
  use Ecto.Schema
  import Ecto.Changeset

  @moduledoc false

  @primary_key {:id, :binary_id, autogenerate: true}
  @foreign_key_type :binary_id
  schema "users" do
    field :email, :string
    field :family_name, :string
    field :given_name, :string
    field :locale, :string
    field :name, :string
    field :picture_url, :string

    timestamps()
  end

  @required_fields [:email, :name, :picture_url, :given_name, :family_name, :locale]

  @doc false
  def changeset(user, attrs) do
    user
    |> cast(attrs, @required_fields)
    |> validate_required(@required_fields)
    |> unique_constraint(:email)
  end
end
