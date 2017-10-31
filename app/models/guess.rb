class Guess < ApplicationRecord
  belongs_to :game
  has_one :user, through: :game
  has_many :pegs, as: :pegable
end
