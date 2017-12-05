class SubstringPuzzle;def self.solvable?(s,p)s==''||p.any?{|b|s=~/^#{b}/&&solvable?($',p)}end;end
