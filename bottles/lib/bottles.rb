# frozen_string_literal: true
class Bottles
  attr_reader :a7, :a8
  def verse(number_of_bottles)
      @a7 = "bottles of beer on the wall, bottles of beer."
      @a8 = "Take one down and pass it around, bottles of beer on the wall."
      a0 =  private_first_line(a7, number_of_bottles)
      a1 =  private_second_line(a8, number_of_bottles)
      [a0, a1].join("\n") + "\n"
  end
  def verses(start_value, end_value)
    expected = []
    (end_value..start_value).each do |n|
      expected << verse(n) + "\n"
    end
    expected.sort! .reverse.join("")
  end
  def sing
    verses(99, 0)
  end

  private

  def private_first_line(str_1, n)
    if n == 1
    str_1.gsub(/bo\w+/, "1 bottle")
    elsif n == 0
      str_1.sub(/bo\w+/, "No more bottles").sub(/, bo\w*/, ", no more bottles")
    else
      str_1.gsub(/bo\w*/, "#{n} bottles")
    end
  end
  
  def private_second_line(str_2, n)
    if n == 1
      str_2.sub(/on\w+/, "it").sub(/bo\w+/, "no more bottles")
    elsif n == 0
       str_2.sub(/.*,/,"Go to the store and buy some more, 99")
    elsif n == 2
      str_2.sub(/bo\w*/, "1 bottle")
    else
      str_2.gsub(/bo\w*/, "#{n-1} bottles")
    end
  end
end
