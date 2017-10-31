class Game < ApplicationRecord
  belongs_to :user
  has_many :guesses
  has_many :pegs, as: :pegable

  validates :user_id, presence: true

end
