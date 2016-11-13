defmodule MyApp.User do
  use MyApp.Web, :model

  schema "users" do
    field :email, :string

    timestamps
  end
end
