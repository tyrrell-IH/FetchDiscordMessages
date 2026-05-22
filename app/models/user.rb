class User < ApplicationRecord
  has_many :discord_messages, dependent: :destroy

  def self.sync_with_discord(auth_info)
    user = User.find_or_initialize_by(discord_user_id: auth_info.uid)
    user.update!(
      name: auth_info.info.name,
      avatar_url: auth_info.info.image
    )

    user
  end
end
