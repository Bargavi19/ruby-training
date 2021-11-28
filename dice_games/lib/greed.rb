# frozen_string_literal: true

class Greed
  def score (a)
    point_scored = 0
    return 0 if a == []
    a = a.sort
    if a[1] == a[0] && a[2] == a[0]
      if a[0] == 1
        point_scored += 1000
      else
        point_scored += a[0] * 100
      end
      3.times { a.shift }
    end
    if a.count(5) > 3
      point_scored += 5 * 100
      4.times { a.shift }
    end
    if a.count(4) == 3 || a.count(6) == 3
      if a.include?(4)
        point_scored += 4 * 100
      else
        point_scored += 6 * 100
      end
      3.times { a.pop }
    end
    a. each do |die|
      if die == 1
        point_scored += 100
      elsif die == 5
        point_scored +=50
      end
    end
    point_scored
  end
end

  class GreedError < StandardError
  end

