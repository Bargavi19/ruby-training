# frozen_string_literal: true

class Greed
  def elif(i)
    # code here
  end

  def score (a)
    if a.is_a?(Array)
      if a == [5]
       return 50
      elsif a == [1]
       return 100
      else
        return 0
      end
    end
  end
end

class GreedError < StandardError
end
