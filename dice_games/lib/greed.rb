# frozen_string_literal: true

class Greed
  def score (a)
    point_scored = 0
    return 0 if a == []
    if a[1] == a[0] && a[2] == a[0]
      if a[0] == 1
        point_scored += 1000
      else
        point_scored += a[0] * 100
      end
      a.shift
      a.shift
      a.shift
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

