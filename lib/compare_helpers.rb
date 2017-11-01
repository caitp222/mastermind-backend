module CompareHelpers

  def compare_hash
    hash = Hash.new
    self.pegs.each do |peg|
      hash[peg.color] = peg.position
    end
    hash
  end

end
