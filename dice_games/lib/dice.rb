# frozen_string_literal: true

class Dice
  attr_reader :values # same results as def values defined previously
  def roll (n = 1)
    @values = []
    # using instance variable so that it can be used across methods
    # declaring instance variable as array. If we didn't, then we cannot use this as array variable
    i = 0
    while(i < n)
      @values[i] = rand(1..6)
      i += 1
    end
  end
end