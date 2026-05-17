class RenamePosetedAtToPostedAt < ActiveRecord::Migration[8.0]
  def change
    rename_column :discord_messages, :poseted_at, :posted_at
  end
end
