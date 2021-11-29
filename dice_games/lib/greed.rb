# frozen_string_literal: true

class Greed
  def score (a = nil)
    if a == nil
      raise GreedError
    end
     point_scored = 0 # score is set to 0 to start off so if no dice, no score
    if (a.count(1)/3) == 1 # setting the 1000 1,1,1 rule
      point_scored += 1000
      3.times { a.shift } # deleting first 3 1's in the array so that it cannot be recalculated when we calculate for the single 1
    end
    [2, 3, 4, 5, 6].each do |num| # set the other triples here
       if (a.count(num)/3) == 1
         point_scored += num * 100
       end
    end
    3.times { a.pop } if point_scored == 500 # deleting last 3 5's from the array. So that it cannot be counted for single 5 calculation
    a. each do |die| # taking care of the single 5s and 1s here
      if die == 1
        point_scored += 100
      elsif die == 5
        point_scored +=50
      end
    end
     point_scored
  end
end

  class GreedError < ArgumentError
  end

