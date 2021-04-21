defmodule ApiInmana.Repo do
  use Ecto.Repo,
    otp_app: :api_inmana,
    adapter: Ecto.Adapters.Postgres
end
