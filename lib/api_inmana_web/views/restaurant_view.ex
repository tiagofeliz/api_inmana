defmodule ApiInmanaWeb.RestaurantView do
  use ApiInmanaWeb, :view

  def render("create.json", %{restaurant: restaurant}), do: restaurant
end
