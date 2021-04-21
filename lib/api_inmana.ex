defmodule ApiInmana do
  alias ApiInmana.Restaurant.Store

  defdelegate restaurant_store(params), to: Store, as: :execute
end
