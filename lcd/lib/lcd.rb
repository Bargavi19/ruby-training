# frozen_string_literal: true

class LCD
  attr_reader :digit, :lcdStates, :lcdDisplayData
  def initialize(number)
    @digit = number
    @lcdStates = %w[HORIZONTAL VERTICAL VERTICAL DONE]
    @lcdDisplayData = {
      0 => [1, 3, 4]
    }
  end

  def render
    if digit == 0
      states = lcdStates.reverse
      0.upto(lcdStates.length) do |i|
        case states.pop
        when "HORIZONTAL"
          line = ""
          line += horizontal_segment(lcdDisplayData[digit][i])
        when "VERTICAL"
          line = ""
          line += vertical_segment(lcdDisplayData[digit][i])
        else
          break
        end
        print line + "\n"
      end
    end
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
        return " | " + " "
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

