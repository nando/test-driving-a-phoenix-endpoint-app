defmodule MyApp.UserController do
  use MyApp.Web, :controller

  def create(conn, params) do
    {:ok, user} = MyApp.Users.Invite.call(params)

    conn
    |> resp(201, "{}")
  end
end
