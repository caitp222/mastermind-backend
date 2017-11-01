class Guess < ApplicationRecord
  belongs_to :game
  has_one :user, through: :game
  has_many :pegs, as: :pegable

  include CompareHelpers

  def correct?
    self.game.compare_hash == self.compare_hash
  end

  def feedback
    if !self.correct?
      return {correct_colors: self.correct_colors, correct_positions: self.correct_positions}
    end
  end

  private
  def correct_colors
    
  end

  def correct_positions

  end
end
