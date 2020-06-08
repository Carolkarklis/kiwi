# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.

# General application configuration
use Mix.Config

config :kiwi,
  ecto_repos: [Kiwi.Repo]

# Configures the endpoint
config :kiwi, KiwiWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "cEmkS6Pl9LMtFPwSEq6r/4rAKxoXo/Tu0d1EGoqCEyic/B2EHHbVRRl64K6xY+cu",
  render_errors: [view: KiwiWeb.ErrorView, accepts: ~w(html json), layout: false],
  pubsub_server: Kiwi.PubSub,
  live_view: [signing_salt: "4LKLoFCt"]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:request_id]

# Use Jason for JSON parsing in Phoenix
config :phoenix, :json_library, Jason

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env()}.exs"
