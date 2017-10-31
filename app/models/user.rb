class User < ApplicationRecord
  has_secure_password

  has_many :games
  has_many :guesses, through: :games

  validates :username, presence: true, uniqueness: true

end
