class Game < ApplicationRecord
  belongs_to :user
  has_many :guesses
  has_many :pegs, as: :pegable

  validates :user_id, presence: true

  include CompareHelpers

  def guess_downcount
    if !self.solved
      self.guesses_remaining -= 1
      if self.guesses_remaining == 0
        self.solved = true
      end
      self.save
    end
  end

end
