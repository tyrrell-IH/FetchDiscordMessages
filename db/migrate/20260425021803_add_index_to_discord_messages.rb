class AddIndexToDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    add_index :discord_messages, :discord_message_id, unique: true
    add_index :discord_messages, :discord_user_id
    add_index :discord_messages, :posted_at
  end
end
