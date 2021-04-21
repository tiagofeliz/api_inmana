defmodule ApiInmana.Application do
  # See https://hexdocs.pm/elixir/Application.html
  # for more information on OTP Applications
  @moduledoc false

  use Application

  def start(_type, _args) do
    children = [
      # Start the Ecto repository
      ApiInmana.Repo,
      # Start the Telemetry supervisor
      ApiInmanaWeb.Telemetry,
      # Start the PubSub system
      {Phoenix.PubSub, name: ApiInmana.PubSub},
      # Start the Endpoint (http/https)
      ApiInmanaWeb.Endpoint
      # Start a worker by calling: ApiInmana.Worker.start_link(arg)
      # {ApiInmana.Worker, arg}
    ]

    # See https://hexdocs.pm/elixir/Supervisor.html
    # for other strategies and supported options
    opts = [strategy: :one_for_one, name: ApiInmana.Supervisor]
    Supervisor.start_link(children, opts)
  end

  # Tell Phoenix to update the endpoint configuration
  # whenever the application is updated.
  def config_change(changed, _new, removed) do
    ApiInmanaWeb.Endpoint.config_change(changed, removed)
    :ok
  end
end
