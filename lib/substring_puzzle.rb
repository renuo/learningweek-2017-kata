module SubstringPuzzle
  def self.solvable?(string, substrings)
    sorted_substrings = substrings.sort { |x, y| x.length - y.length }
    substrings_shortest_first = sorted_substrings
    substrings_longest_first = sorted_substrings.reverse
    return true if check(string, substrings_longest_first)
    check(string, substrings_shortest_first)
  end

  def self.check(string, substrings)
    result = ''
    index = 0
    while index < substrings.size
      substring = substrings[index]
      index += 1
      if string.start_with?(result + substring)
        result += substring
        index = 0
      end
    end
    result == string
  end
end
