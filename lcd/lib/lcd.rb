# frozen_string_literal: true

class LCD
  attr_reader :num_or_string, :lcdStates, :lcdDisplayData, :no_of_lines
  def initialize(number_or_string, width: 1, height: 1)
    @num_or_string = number_or_string
    @no_of_lines = [width, height]
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
    print no_of_lines
  end

  def render
    if num_or_string.is_a? Numeric
     individual_number_or_chars = num_or_string.digits.reverse
    else
      individual_number_or_chars = num_or_string.chars
    end
    e = individual_number_or_chars.map{ |i| display_lcd_digits_or_chars(i) }
    f = e.transpose.map do |lcd_digits_or_chars|
      if @no_of_lines[0] != 1
      lcd_digits_or_chars.push("\n")
      end
    end
    f.join("")
  end

  def display_lcd_digits_or_chars(individual_digit_or_char)
    lcdStates.map.with_index do |w, index|
      if w ==  "HORIZONTAL"
        horizontal_segment(lcdDisplayData[individual_digit_or_char][index])
      elsif w == "VERTICAL"
        vertical_segment(lcdDisplayData[individual_digit_or_char][index])
      end
    end
  end

  def horizontal_segment(type)
      case type
      when 1
        return " " + "_" * no_of_lines[0] + " "
      else
        return " "* no_of_lines[1] if no_of_lines[1] != 1
        return " "* no_of_lines[0] + "  " if no_of_lines[0] != 1
        return "   "
      end
   end

   def vertical_segment(type)
      case type
      when 1
        return " "* no_of_lines[0] + " |" * no_of_lines[1]
        return "  |\n" * (no_of_lines[1] - 1) + "  |"
      when 2
        return "|_" + " " * no_of_lines[0]
      when 3
        return "| |"
      when 4
        return "|" * no_of_lines[1] + "_" * no_of_lines[0]+ "|" * no_of_lines[1]
        return "| |\n" * (no_of_lines[1] - 1) + "|_|"
      when 5
        return " " + "_" * no_of_lines[0]+ "|"
      else
        return "|  " * no_of_lines[0]
      end
   end
end






