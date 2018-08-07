defmodule PortalcsWeb.PageController do
  use PortalcsWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
