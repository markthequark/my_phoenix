import Config

# We don't run a server during test. If one is required,
# you can enable the server option below.
config :my_app, MyAppWeb.Endpoint,
  http: [ip: {127, 0, 0, 1}, port: 4002],
  secret_key_base: "6D8qElnz8TmzpW/Ps6G5ma5tn0C4FxtLH4iZ0J+nD7uWjzxdaQeysQQrkP9aW5eV",
  server: false

# In test we don't send emails.
config :my_app, MyApp.Mailer,
  adapter: Swoosh.Adapters.Test

# Print only warnings and errors during test
config :logger, level: :warn

# Initialize plugs at runtime for faster test compilation
config :phoenix, :plug_init_mode, :runtime
