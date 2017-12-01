class SubstringPuzzler
  def initialize(string, substrings)
    @string = string
    @substrings = substrings
    @solvable = { string.length => true }
  end

  def solvable?(position = 0)
    return @solvable[position] unless @solvable[position].nil?
    @solvable[position] = @substrings.any? do |substring|
      (@string[position, substring.length] == substring) && solvable?(position + substring.length)
    end
  end
end
