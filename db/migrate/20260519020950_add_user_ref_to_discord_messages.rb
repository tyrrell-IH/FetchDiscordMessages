class AddUserRefToDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    add_reference :discord_messages, :user, foreign_key: true
  end
end
