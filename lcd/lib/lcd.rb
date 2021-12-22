# frozen_string_literal: true

class LCD
  attr_reader :digit, :lcdStates, :lcdDisplayData
  def initialize(number)
    @digit = number
    @lcdStates = %w[HORIZONTAL VERTICAL VERTICAL]
    @lcdDisplayData = {
      0 => [1, 3, 4],
      6 => [1, 2, 4],
      8 => [1, 4, 4]
    }
  end

  def render
    e = lcdStates.each_with_index.map do |w, index|
             if w ==  "HORIZONTAL"
                horizontal_segment(lcdDisplayData[digit][index]) + "\n"
             elsif w == "VERTICAL"
                vertical_segment(lcdDisplayData[digit][index]) + "\n"
             end
    end
      e.join("")
  end

  def horizontal_segment(type)
      case type
      when 1
        return  " _ "
      else
        return ""
      end
   end

   def vertical_segment(type)
      case type
      when 1
        return " "+ "|"
      when 2
        return "|_" + " "
      when 3
        return "| |"
      when 4
        return "|_|"
      else
        return ""
      end
   end
end




  #   elsif digit == 6
  #     <<~SQUIGGLY_HEREDOC
  #        _
  #       |_
  #       |_|
  #     SQUIGGLY_HEREDOC
  #   elsif digit == 8
  #   <<~SQUIGGLY_HEREDOC
  #        _
  #       |_|
  #       |_|
  #   SQUIGGLY_HEREDOC
  #   end
  # end

