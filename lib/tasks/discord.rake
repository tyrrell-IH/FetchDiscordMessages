require "discordrb"

namespace :discord_bot do
  desc "Fetch messages from Discord"
  task fetch_messages: :environment do
    bot = Discordrb::Bot.new token: ENV["DISCORD_BOT_TOKEN"]
    channel = bot.channel(ENV["CHANNEL_ID"])
    def fetch_new_messages(channel)
      last_message_id = DiscordMessage.maximum(:discord_message_id)
      messages = channel.history(10, nil, last_message_id)
      messages.each do |message|
        DiscordMessage.create!(
          content: message.content,
          author: message.author.name,
          posted_at: message.timestamp.strftime("%Y-%m-%d %H:%M:%S"),
          discord_message_id: message.id
          )
      end
    end

    fetch_new_messages(channel)
  end
end
