class Guess < ApplicationRecord
  belongs_to :game
  has_one :user, through: :game
  has_many :pegs, as: :pegable

  include CompareHelpers

  def compare
    self.game.compare_hash == self.compare_hash
  end
end
