class DiscordMessagesController < ApplicationController
  def index
    @discord_messages = DiscordMessage.all.order(created_at: :asc)
  end
end
