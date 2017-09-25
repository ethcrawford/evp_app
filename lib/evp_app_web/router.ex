defmodule EvpAppWeb.Router do
  use EvpAppWeb, :router

  pipeline :browser do
    plug :accepts, ["html"]
    plug :fetch_session
    plug :fetch_flash
    plug :protect_from_forgery
    plug :put_secure_browser_headers
  end

  pipeline :api do
    plug :accepts, ["json"]
  end

  scope "/", EvpAppWeb do
    pipe_through :browser # Use the default browser stack

    get "/", PageController, :index
    get "/ventilation-project", LandingController, :ventilation_project
  end

  # Other scopes may use custom stacks.
  # scope "/api", EvpAppWeb do
  #   pipe_through :api
  # end
end
