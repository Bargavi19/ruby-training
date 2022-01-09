# frozen_string_literal: true

class LCD
  attr_reader :number_or_string, :width, :height

  def initialize(number_or_string, width: 1, height: 1)
    @number_or_string = number_or_string
    @width = width
    @height = height
  end

  def render
    "#{line_one} * width\n" +
    individual_number_or_letter.map { |individual_number_or_letter| display_lcd_digits_or_chars(individual_number_or_letter) }.transpose.join("")
  end

  def individual_number_or_letter
    if number_or_string.is_a?(Numeric)
      number_or_string.digits.reverse
    else
      number_or_string.chars
    end
  end

  def display_lcd_digits_or_chars(individual_digit_or_char)
    lcd_states = %w[HORIZONTAL VERTICAL HORIZONTAL VERTICAL VERTICAL HORIZONTAL VERTICAL]
    lcd_display_data = {
      0 => [1, 1, 0, 1, 1, 1, 1],
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
    lcd_states.map.with_index do |w, index|
      if w ==  "HORIZONTAL"
        if index == 0
           " " + horizontal_segment(lcd_display_data[individual_digit_or_char][index]) + " "
        else
           horizontal_segment(lcd_display_data[individual_digit_or_char][index])
        end
      else
        vertical_segment(lcd_display_data[individual_digit_or_char][index])
      end
    end
  end


    def horizontal_segment(type)
      case type
      when 1
        "_"
      else
        " "
      end
    end

   def vertical_segment(type)
      case type
      when 1
        "|"
      else
        " "
      end
   end
 end






