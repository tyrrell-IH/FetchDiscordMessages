class CreateDiscordMessages < ActiveRecord::Migration[8.0]
  def change
    create_table :discord_messages do |t|
      t.string :discord_message_id
      t.string :discord_user_id
      t.string :discord_channel_id
      t.text :content
      t.datetime :posted_at

      t.timestamps
    end
  end
end
