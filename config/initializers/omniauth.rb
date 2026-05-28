# frozen_string_literal: ture

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :discord, ENV["DISCORD_CLIENT_ID"], ENV["DISCORD_CLIENT_SECRET"], scope: "identify"
  OmniAuth.config.on_failure = proc { |_env| [ 302, { "Location" => "/auth/failure", "Content-Type" => "text/html" }, [] ] }
end
