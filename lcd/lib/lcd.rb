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
    e = individual_digits.map{ |i| display_lcd_digits(i) }
    e.transpose.map { |lcd_digits|  lcd_digits.push("\n") }.join("")
  end

  def display_lcd_digits(individual_digit)
    lcdStates.map.with_index do |w, index|
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
      else
        return " _|"
      end
   end
end






