defmodule PortalcsWeb.LayoutView do
  use PortalcsWeb, :view
  def has_user(conn) do
    conn
    |> Map.get(:assigns)
    |> Map.get(:current_user)
    |> case do
      nil -> false
      _ -> true
    end
  end
end
