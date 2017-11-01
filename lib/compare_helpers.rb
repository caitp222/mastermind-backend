module CompareHelpers

  def compare_hash
    hash = Hash.new
    self.pegs.each do |peg|
      hash[peg.position] = peg.color
    end
    hash
  end

end
