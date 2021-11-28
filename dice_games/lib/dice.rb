# frozen_string_literal: true

class Dice
  attr_reader :values # same results as def values defined previously
  def roll (n = 1)
    @values = []
    # using instance variable so that it can be used across methods
    # declaring instance variable as array. If we didn't, then it will return as array
    n.times { @values << rand(1..6) }
  end
end