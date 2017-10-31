class Peg < ApplicationRecord
  belongs_to :pegable, polymorphic: true

end
