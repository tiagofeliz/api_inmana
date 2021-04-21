# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :api_inmana,
  ecto_repos: [ApiInmana.Repo]

# Configures the endpoint
config :api_inmana, ApiInmanaWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "AQq26hbi+0f6N2NiO5MyXg0tUBbeR3VS9YuRilIk0cyBEUZgj7gBJ2xG7Bk1gXJ7",
  render_errors: [view: ApiInmanaWeb.ErrorView, accepts: ~w(json), layout: false],
  pubsub_server: ApiInmana.PubSub,
  live_view: [signing_salt: "gy//ByYz"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
