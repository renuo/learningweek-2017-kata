module SubstringPuzzle
  def self.solvable?(string, substrings)
    result = ''
    i = 0
    while i < substrings.size
      i += 1
      if string.start_with?(result + substrings[i - 1])
        result += substrings[i - 1]
        i = 0
      end
    end
    result == string
  end
end
