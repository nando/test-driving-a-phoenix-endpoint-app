defmodule MyApp.UserController do
  use MyApp.Web, :controller

  def create(conn, params) do
    attrs = %{email: params["email"]}

    case MyApp.Users.Invite.call(attrs) do
      {:ok, user} ->
        render_user(conn, user)
      {:error, :invalid_email} ->
        resp(conn, 400, %{message: "email is invalid"} |> Poison.encode!)
    end
  end

  defp render_user(conn, user) do
    {:ok, body} = %{
      id: user.id,
      email: user.email
    }
    |> Poison.encode

    conn
    |> resp(201, body)
  end
end
