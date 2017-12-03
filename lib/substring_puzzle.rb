module SubstringPuzzle
  def self.solvable?(string, substrings)
    substrings = substrings.sort
    tempstring1 = string.dup
    substrings.each do |substring|
      if tempstring1.include? substring
        tempstring1.gsub! substring, ''
      end
    end
    substrings = substrings.sort.reverse
    tempstring2 = string.dup
    substrings.each do |substring|
      if tempstring2.include? substring
        tempstring2.gsub! substring, ''
      end
    end
    return false if tempstring1 != '' && tempstring2 != ''
    return true
  end
end
