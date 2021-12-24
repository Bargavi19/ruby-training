# frozen_string_literal: true

class LCD
  attr_reader :digit, :lcdStates, :lcdDisplayData
  def initialize(number)
    @digit = number
    @lcdStates = %w[HORIZONTAL VERTICAL VERTICAL]
    @lcdDisplayData = {
      0 => [1, 3, 4],
      1 => [0, 1, 1],
      2 => [1, 5, 2],
      3 => [1, 5, 5],
      4 => [0, 4, 1],
      5 => [1, 2, 5],
      6 => [1, 2, 4],
      7 => [1, 1, 1],
      8 => [1, 4, 4],
      9 => [1, 4, 5]
    }
  end

  def render
    individual_digits = digit.digits.reverse
    e = individual_digits.map{ |i| form_digits(i)}
    if individual_digits.length == 1
    e.transpose.join("\n") + "\n"
    else
     e.transpose.map { |element|  element.push("\n") }.join("")
    end
  end

  def form_digits(individual_digit)
    lcdStates.each_with_index.map do |w, index|
      if w ==  "HORIZONTAL"
        horizontal_segment(lcdDisplayData[individual_digit][index])
      elsif w == "VERTICAL"
        vertical_segment(lcdDisplayData[individual_digit][index])
      end
    end
  end

  def horizontal_segment(type)
      case type
      when 1
        return  " _ "
      else
        return "   "
      end
   end

   def vertical_segment(type)
      case type
      when 1
        return " "+ " |"
      when 2
        return "|_" + " "
      when 3
        return "| |"
      when 4
        return "|_|"
      when 5
        return " _|"
      else
        return " "
      end
   end
end






