class Peg < ApplicationRecord
  belongs_to :pegable, polymorphic: true

  COLORS = ["blue", "white", "black", "yellow", "red", "green"]

  def initialize(args)
    super
    self.color = COLORS.sample
  end

end
