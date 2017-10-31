class Guess < ApplicationRecord
  belongs_to :game
  has_many :pegs, as: :pegable
end
