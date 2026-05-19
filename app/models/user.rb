class User < ApplicationRecord
  has_many :discord_messages, dependent: :destroy
end
