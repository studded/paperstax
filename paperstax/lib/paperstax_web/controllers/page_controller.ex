defmodule PaperstaxWeb.PageController do
  use PaperstaxWeb, :controller

  def index(conn, _params) do
    render conn, "index.html"
  end
end
