class RenameAvatarHashToAvatarUrlInUsers < ActiveRecord::Migration[8.0]
  def change
    rename_column :users, :avatar_hash, :avatar_url
  end
end
