class AddColumnPostedAtToDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    add_column :discord_messages, :poseted_at, :datetime
  end
end
