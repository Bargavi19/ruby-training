# frozen_string_literal: true

class LCD
  attr_reader :number_or_string, :width, :height

  def initialize(number_or_string, width: 1, height: 1)
    @number_or_string = number_or_string
    @width = width
    @height = height
  end

  def render
    if number_or_string.is_a? (Numeric)
      individual_number_or_chars = number_or_string.digits.reverse
    else
      individual_number_or_chars = number_or_string.chars
    end
    individual_digit_display = individual_number_or_chars.map { |i| display_lcd_digits_or_chars(i) }
    individual_digit_display.transpose.map { |lcd_digits_or_chars| lcd_digits_or_chars.push("\n") }.join("")
  end

  def display_lcd_digits_or_chars(individual_digit_or_char)
    lcdStates = %w[HORIZONTAL VERTICAL HORIZONTAL VERTICAL]
    lcdDisplayData = {
      0 => [1, 3, 0, 4],
      1 => [0, 1, 0, 1],
      2 => [1, 5, 0, 2],
      3 => [1, 5, 0, 5],
      4 => [0, 4, 0, 1],
      5 => [1, 2, 0, 5],
      6 => [1, 2, 0, 4],
      7 => [1, 1, 0, 1],
      8 => [1, 4, 0, 4],
      9 => [1, 4, 0, 5],
      "a" => [1, 4, 0, 3],
      "c" => [1, 6, 0, 2],
      "b" => [0, 2, 0, 4],
      "f" => [1, 2, 0, 6],
      "e" => [1, 2, 0, 2],
      "d" => [0, 5, 0, 4]
    }
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
        " " + "_"+ " "
      else
        " "
      end
    end

   def vertical_segment(type)
      case type
      when 1
        " |"
      when 2
        "|"
      when 3
        "| |"
      when 5
        " " + "|"
      end
   end
 end






