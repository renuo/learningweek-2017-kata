module SubstringPuzzle;def self.solvable?(s,p)s==''||p.any?{|i|/^#{i}/=~s&&solvable?($',p)}end;end
