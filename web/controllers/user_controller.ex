defmodule MyApp.UserController do
  use MyApp.Web, :controller

  def create(conn, params) do
    attrs = %{email: params["email"]}
    {:ok, user} = MyApp.Users.Invite.call(attrs)

    {:ok, body} = %{
      id: user.id,
      email: user.email
    }
    |> Poison.encode

    conn
    |> resp(201, body)
  end
end
