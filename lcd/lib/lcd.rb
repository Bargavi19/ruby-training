# frozen_string_literal: true

class LCD
  attr_reader :digit
  def initialize(number)
    @digit = number
  end
  def render
    if digit == 0
      <<~SQUIGGLY_HEREDOC
         _ 
        | |
        |_|
      SQUIGGLY_HEREDOC
    elsif digit == 6
      <<~SQUIGGLY_HEREDOC
         _ 
        |_ 
        |_|
      SQUIGGLY_HEREDOC
    elsif digit == 8
    <<~SQUIGGLY_HEREDOC
         _ 
        |_|
        |_|
    SQUIGGLY_HEREDOC
    end
  end
end
