# This file is responsible for configuring your application
# and its dependencies with the aid of the Mix.Config module.
#
# This configuration file is loaded before any dependency and
# is restricted to this project.
use Mix.Config

# General application configuration
config :paperstax,
  ecto_repos: [Paperstax.Repo]

# Configures the endpoint
config :paperstax, PaperstaxWeb.Endpoint,
  url: [host: "localhost"],
  secret_key_base: "PM1YZhID1MeobM4BHYJdcbfDwt5ne/gFAvHD/TO/0LsKayJa2gHvjndpwwuN+KLN",
  render_errors: [view: PaperstaxWeb.ErrorView, accepts: ~w(html json)],
  pubsub: [name: Paperstax.PubSub,
           adapter: Phoenix.PubSub.PG2]

# Configures Elixir's Logger
config :logger, :console,
  format: "$time $metadata[$level] $message\n",
  metadata: [:user_id]

# Import environment specific config. This must remain at the bottom
# of this file so it overrides the configuration defined above.
import_config "#{Mix.env}.exs"
