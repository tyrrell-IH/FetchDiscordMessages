class RemoveColumnFromDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    remove_column :discord_messages, :discord_message_id, :string
    remove_column :discord_messages, :discord_user_id, :string
    remove_column :discord_messages, :discord_channel_id, :string
    remove_column :discord_messages, :posted_at, :datetime
  end
end
