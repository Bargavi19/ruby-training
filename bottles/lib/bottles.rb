# frozen_string_literal: true

class Bottles
  attr_reader :a0, :a1,:a2, :a3, :a4, :a5, :a6
  def verse(number_of_bottles)
    @a0 ="#{number_of_bottles} bottles of beer on the wall, #{number_of_bottles} bottles of beer."
    @a1 = "Take one down and pass it around, #{number_of_bottles - 1} bottles of beer on the wall."
    if number_of_bottles == 2
      private_verse2
    elsif number_of_bottles == 1
      private_verse1
    elsif number_of_bottles == 0
      private_verse0
    else
      expected = [a0, a1].join("\n") + "\n"
    end
  end
  def verses(start_value, end_value)
    expected = []
    (end_value..start_value).each do |n|
      expected << verse(n) + "\n"
    end
    expected1 = expected.sort! .reverse.join("")
  end
  def sing
    verses(99, 0)
  end

  private

  def private_verse2
    @a2 ="Take one down and pass it around, 1 bottle of beer on the wall."
    expected = [a0, a2].join("\n") + "\n"
  end
  def private_verse1
    @a3 ="1 bottle of beer on the wall, 1 bottle of beer."
    @a4 ="Take it down and pass it around, no more bottles of beer on the wall."
    expected = [a3, a4].join("\n") + "\n"
  end
  def private_verse0
    @a5 = "No more bottles of beer on the wall, no more bottles of beer."
    @a6 = "Go to the store and buy some more, 99 bottles of beer on the wall."
    expected =  [a5, a6].join("\n") + "\n"
  end
end
