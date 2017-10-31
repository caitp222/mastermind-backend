class Game < ApplicationRecord
  belongs_to :user
  has_many :guesses
  has_many :pegs, as: :pegable

  validates :user_id, presence: true

  def guess_made
    if self.guesses_remaining > 1
      self.guesses_remaining -= 1
      self.save
    elsif self.guesses_remaining == 1
      self.guesses_remaining -= 1
      self.solved = true
      self.save
    elsif self.solved 
    end
  end

end
