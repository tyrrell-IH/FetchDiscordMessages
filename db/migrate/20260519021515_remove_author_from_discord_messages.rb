class RemoveAuthorFromDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    remove_column :discord_messages, :author, :string
  end
end
