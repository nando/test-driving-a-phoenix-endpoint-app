defmodule MyApp.UserController.InviteTest do
  use MyApp.ConnCase

  test "inviting a user responds with the new user" do
    conn =
      build_conn
      |> post("/users", email: "alice@example.com")

    body = conn |> response(201) |> Poison.decode!

    assert body["id"] |> is_integer
    assert body["id"] > 0
    assert body["email"] == "alice@example.com"
  end

  test "invalid email gives a 400 response" do
    conn =
      build_conn
      |> post("/users", email: "Alice and Bob")

    body = conn |> response(400) |> Poison.decode!

    assert body["message"] == "email is invalid"
  end
end
