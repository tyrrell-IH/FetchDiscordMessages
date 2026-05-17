class RemoveColumnEditedAtFromDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    remove_column :discord_messages, :edited_at, :datetime
  end
end
