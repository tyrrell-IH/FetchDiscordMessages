class AddColumnToDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    add_column :discord_messages, :author, :text
  end
end
