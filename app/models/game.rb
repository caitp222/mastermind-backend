class Game < ApplicationRecord
  belongs_to :user
  has_many :guesses
  has_many :pegs, as: :pegable

  validates :user_id, presence: true

  include CompareHelpers

  def guess_downcount
    if !self.solved
      if self.guesses_remaining > 1 &&
        self.guesses_remaining -= 1
        self.save
      elsif self.guesses_remaining == 1
        self.guesses_remaining -= 1
        self.solved = true
        self.save
      end
    elsif self.solved
    end
  end

end
