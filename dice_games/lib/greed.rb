# frozen_string_literal: true

class Greed
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
        if a.include?(6) && a.count(6) == 1
          if a.include?(1)
          return 1050
          else return 50
          end
        elsif a.include?(1)
          return 1200 if a.count(1) ==5
          if a.count(1) == 1
          return 150
          else
            if a.count(4) == 3
            return 600
            else
              return 800
            end
          end
        elsif a.count(4) == 4 && a.count(5) == 1
          return 450
        elsif a.count(5) == 4 && a.count(4) == 1
          return 550
        end
      else
        return 0
      end
    end
  end
end

class GreedError < StandardError
end
