# frozen_string_literal: true

class Dice
  attr_reader :values, :newvalues, :e# same results as def values defined previously
  def roll (n = 1)
    @values = []
    # using instance variable so that it can be used across methods
    # declaring instance variable as array. If we didn't, then it will return the values as nil
    n.times { @values << rand(1..6) }
  end
  def roll1(n)
    @newvalues = []
      n.times { @newvalues << rand(1..6) }
  end
  def two_rolls_equal
    @e = false
    if @newvalues == @values
      @e = true
    end
  end
end
