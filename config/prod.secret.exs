use Mix.Config

# In this file, we keep production configuration that
# you likely want to automate and keep it away from
# your version control system.
#
# You should document the content of this
# file or create a script for recreating it, since it's
# kept out of version control and might be hard to recover
# or recreate for your teammates (or you later on).
config :my_app, MyApp.Endpoint,
  secret_key_base: "LxB+UbcJZgH1zo53i7Bw5t6Es7duOBRw/PI+jnWhSo7dLtGWEp6IUZUvglXvIKXC"

# Configure your database
config :my_app, MyApp.Repo,
  adapter: Ecto.Adapters.Postgres,
  username: "postgres",
  password: "postgres",
  database: "my_app_prod",
  pool_size: 20
