use Mix.Config

config :exvcr, [
  filter_sensitive_data: [
    [pattern: "Bearer [0-9a-z]+", placeholder: "<<access_key>>"]
  ],
  filter_url_params: false,
  response_headers_blacklist: ["Set-Cookie", "X-Request-Id"]
]

import_config "test.secret.exs"
