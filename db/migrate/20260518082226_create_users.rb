class CreateUsers < ActiveRecord::Migration[8.0]
  def change
    create_table :users do |t|
      t.string :name
      t.string :discord_user_id
      t.string :avatar_hash

      t.timestamps
    end
  end
end
