class DiscordMessagesController < ApplicationController
  def index
    @discord_messages = DiscordMessage.all.order(posted_at: :asc)
  end
end
