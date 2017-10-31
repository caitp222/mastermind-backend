class Peg < ApplicationRecord
  belongs_to :pegable, polymorphic: true

  COLORS = ["blue", "white", "black", "yellow", "red", "green"]

end
