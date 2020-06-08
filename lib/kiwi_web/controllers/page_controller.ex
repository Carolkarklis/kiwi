defmodule KiwiWeb.PageController do
  use KiwiWeb, :controller

  def index(conn, _params) do
    render(conn, "index.html")
  end
end
