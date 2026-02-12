Rails.application.config.middleware.use OmniAuth::Builder do
  provider :oauth2,
    Rails.application.credentials.dig(:mastodon, :client_id),
    Rails.application.credentials.dig(:mastodon, :client_secret),
    {
      name: :mastodon,
      scope: "read:accounts read:statuses write:statuses",
      client_options: {
        site: "https://mastodon.social",
        authorize_url: "/oauth/authorize",
        token_url: "/oauth/token"
      },
      redirect_uri: "http://localhost:3000/auth/mastodon/callback"

    }
end
OmniAuth.config.full_host = lambda do |env|
  request = Rack::Request.new(env)
  "#{request.scheme}://#{request.host_with_port}"
end
