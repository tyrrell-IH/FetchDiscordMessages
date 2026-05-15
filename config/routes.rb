Rails.application.routes.draw do
  root "discord_messages#index"
  get "discord_messages/index"
end
