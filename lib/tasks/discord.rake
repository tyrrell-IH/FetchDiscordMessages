require 'discordrb'

namespace :discord_bot do
  desc 'Fetch messages from Discord'
  task fetch_messages: :environment do
    bot = Discordrb::Bot.new token: ENV['DISCORD_BOT_TOKEN']
    channel = bot.channel(ENV['CHANNEL_ID'])
    def fetch_new_messages(channel)
      last_message_id = DiscordMessage.maximum(:discord_message_id)
      messages = channel.history(10, nil, last_message_id)
      messages.each do |message|
        DiscordMessage.create!(
          discord_message_id: message.id,
          discord_user_id: message.author.id,
          discord_channel_id: message.channel.id,
          content: message.content,
          posted_at: message.timestamp,
          edited_at: message.edited_timestamp,
          )
      end
    end

    def fetch_edited_messages(channel)
      messages = channel.history(100)

      messages.each do |message|
        next if message.edited_timestamp.nil?

        discord_message = DiscordMessage.find_by(discord_message_id: message.id)
        next if discord_message.nil?
        next if discord_message.edited_at == message.edited_timestamp

        discord_message.update!(
            content: message.content,
            edited_at: message.edited_timestamp,
          )
      end
    end

    fetch_new_messages(channel)
    fetch_edited_messages(channel)
  end
end
