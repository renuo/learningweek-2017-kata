module SubstringPuzzle
  def self.solvable?(_string, _substrings)
    helper = Helper.new
    helper.string_covered?(helper.mark_covered_parts(_string, helper.covered_parts(_string, _substrings, '*'), '*'), '*')
  end

  class Helper
    def covered_parts(string, substrings, _character)
      covered_parts = []
      substrings.each do |substring|
        test_string = string.dup
        while test_string.include? substring
          covered_parts << test_string.dup.gsub(substring, create_placeholder(substring.length, _character))
          test_string[test_string.index(substring)] = '&'
        end
      end
      covered_parts
    end

    def mark_covered_parts(string, _covered_parts, _character)
      _covered_parts.each do |covered_string|
        covered_string.split('').each_with_index do |char, index|
          string[index] = _character if char == _character
        end
      end
      string
    end

    def string_covered?(string, _character)
      string.delete(_character).empty?
    end

    private

    def create_placeholder(length, _character)
      array = []
      length.times { array << _character }
      array.join
    end
  end
end

# 1. for each substring
#   save a copy of the string with the parts covered by the substring replaced with *'s inside an array of strings
# 2. if there's a star in any array item at a specific index make string[index] a *
#   substrings.each do |substring|
#     substring.split('').each_with_index do |char, index|
#       string[index] = '*' if char == '*'
#     end
#   end
# 3. return true if there's only stars in the string. else return false
#   string.gsub!('*', '').empty?
