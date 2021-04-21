defmodule ApiInmanaWeb.RestaurantController do
  use ApiInmanaWeb, :controller

  alias ApiInmana.Restaurant
  alias ApiInmanaWeb.FallbackController

  action_fallback FallbackController

  def store(connection, params) do
    with {:ok, %Restaurant{} = resource} <- ApiInmana.restaurant_store(params) do
      connection
      |> put_status(:ok)
      |> render("create.json", restaurant: resource)
    end
  end

  def check(connection, _params) do
    connection
    |> put_status(:ok)
    |> json(%{message: "Not crazy yet!"})
  end
end
