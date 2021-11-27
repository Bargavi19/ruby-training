# frozen_string_literal: true

class Dice
  def roll (n = 1)
    @values = []  # declaring instance variable as array. If we didn't, then we cannot use this as array variable
    i = 0
    while(i < n)
      @values[i] = rand(1..6)
      i += 1
    end
  end
  def values
    @values
  end
end
