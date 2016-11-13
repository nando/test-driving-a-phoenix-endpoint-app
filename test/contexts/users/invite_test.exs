defmodule MyApp.Users.InviteTest do
  use MyApp.ModelCase

  alias MyApp.Users.Invite
  alias MyApp.User

  test "it creates a user" do
    {:ok, user} = Invite.call(%{email: "alice@example.com"})

    assert user.id > 0
    assert user.email == "alice@example.com"

    assert (from u in User, select: count(u.id)) |> Repo.one == 1
  end
end
