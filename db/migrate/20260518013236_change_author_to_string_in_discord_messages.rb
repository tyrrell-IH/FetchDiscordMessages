class ChangeAuthorToStringInDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    change_column :discord_messages, :author, :string
  end
end
