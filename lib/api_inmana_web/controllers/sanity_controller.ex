defmodule ApiInmanaWeb.SanityController do
  use ApiInmanaWeb, :controller

  def check(connection, _params) do
    connection
    |> put_status(:ok)
    |> json(%{message: "Not crazy yet!"})
  end
end
