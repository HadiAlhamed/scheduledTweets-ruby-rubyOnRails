Rails.application.config.middleware.use OmniAuth::Builder do
  provider :oauth2,
    Rails.application.credentials.dig(:mastodon, :client_id),
    Rails.application.credentials.dig(:mastodon, :client_secret),
    {
      name: :mastodon, # 👈 THIS is what fixes the error
      scope: "read:accounts read:statuses write:statuses",
      client_options: {
        site: "https://mastodon.social",
        authorize_url: "/oauth/authorize",
        token_url: "/oauth/token"
      }
    }
end

OmniAuth.config.full_host = "http://localhost:3000"
