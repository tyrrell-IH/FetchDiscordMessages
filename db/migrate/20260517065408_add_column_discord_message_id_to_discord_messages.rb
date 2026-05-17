class AddColumnDiscordMessageIdToDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    add_column :discord_messages, :discord_message_id, :string
  end
end
