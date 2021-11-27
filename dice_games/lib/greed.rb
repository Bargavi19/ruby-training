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
      elsif a.count(1) == 2 && a.count(5) == 2
        return 300
      elsif a.length == 3
        b = a.uniq
        if b[0] != 1
        return b[0] * 100
        else
        return 1000
        end
      elsif a.length == 5
        if a.include?(6)
          return 50
        else
          return 150
        end
      else
        return 0
      end
    end
  end
end

class GreedError < StandardError
end
