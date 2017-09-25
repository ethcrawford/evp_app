defmodule EvpAppWeb.LandingController do
  use EvpAppWeb, :controller

  # Don't include layout in render.
  plug :put_layout, false

  # Ventilation Project Landing page
  def ventilation_project(conn, _params) do
    render conn, "ventilation_project.html"
  end
end
