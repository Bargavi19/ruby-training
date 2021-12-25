# frozen_string_literal: true

class LCD
  attr_reader :num_or_string, :lcdStates, :lcdDisplayData
  def initialize(number_or_string)
    @num_or_string = number_or_string
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
      9 => [1, 4, 5],
      "a" => [1, 4, 3],
      "c" => [1, 6, 2],
      "b" => [0, 2, 4],
      "f" => [1, 2, 6],
      "e" => [1, 2, 2],
      "d" => [0, 5, 4]
    }
  end

  def render
    if num_or_string.is_a? Numeric
     individual_number_or_chars = num_or_string.digits.reverse
    else
      individual_number_or_chars = num_or_string.chars
    end
    e = individual_number_or_chars.map{ |i| display_lcd_digits_or_chars(i) }
    e.transpose.map { |lcd_digits_or_chars|  lcd_digits_or_chars.push("\n") }.join("")
  end

  def display_lcd_digits_or_chars(individual_digit)
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
      when 5
        return " _|"
      else
        return "|  "
      end
   end
end






