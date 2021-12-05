# frozen_string_literal: true

class Bottles
  def verse(number_of_bottles)
    # a1 = "#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.\nTake one down and pass it around, #{number_of_bottles - 1} bottles of beer on the wall.\n"
    if number_of_bottles == 1
      a1="1 bottle of beer on the wall, 1 bottle of beer.\nTake it down and pass it around, no more bottles of beer on the wall.\n"
    else
      a1="#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer.\nTake one down and pass it around, #{number_of_bottles - 1} bottles of beer on the wall.\n"
    end
  end
end
