require 'substring_puzzler'

module SubstringPuzzle
  def self.solvable?(string, substrings)
    # TODO
  end

  # Possible solution 1: Naive with recursion
  def self.solvable_1?(string, substrings)
    return true if string == ''
    substrings.any? do |substring|
      string.start_with?(substring) && self.solvable_1?(string[substring.length..-1], substrings)
    end
  end

  # Possible solution 2: Dynamic programming
  def self.solvable_2?(string, substrings)
    SubstringPuzzler.new(string, substrings).solvable?
  end
end
