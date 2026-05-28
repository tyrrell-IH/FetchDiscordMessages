Rails.application.routes.draw do
  root "discord_messages#index"
  get "discord_messages/index"

  get "/login", to: "users/sessions#new"
  get "/auth/discord/callback", to: "users/sessions#callback"
  get "/auth/failure", to: redirect("/")
  delete "/logout", to: "users/sessions#destroy"
end
