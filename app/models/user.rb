class User < ApplicationRecord
  has_many :games

  validates :username, presence: true, unique: true

  has_secure_password


end
