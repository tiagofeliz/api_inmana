defmodule ApiInmana.Restaurant do
  use Ecto.Schema
  import Ecto.Changeset

  @require_params [:email, :name]

  @primary_key {:id, :binary_id, autogenerate: true}
  @derive {Jason.Encoder, only: @require_params ++ [:id]}

  schema "restaurant" do
    field :email, :string
    field :name, :string

    timestamps()
  end

  def changeset(params) do
    %__MODULE__{}
    |> cast(params, @require_params)
    |> validate_required(@require_params)
    |> validate_length(:name, min: 2)
    |> validate_format(:email, ~r/@/)
    |> unique_constraint(:email)
  end
end
