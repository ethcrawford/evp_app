defmodule EvpAppWeb.PageController do
  use EvpAppWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
