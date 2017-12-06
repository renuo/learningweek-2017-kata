module Square
  def self.draw(n)
    # TODO
  end

  def self.draw_solution(n)
    k = n-2
    ('+' + '-'*k + '+' + "\n") +
        ('|' + ' '*k + '|' + "\n") * k +
        ('+' + '-'*k + '+')
  end
end
