# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  angles = [a, b, c, d].sort
  if angles[0] <= 0 || angles.sum !=360
    raise QuadrilateralError
  end
  case angles.uniq.size
  when 1 then [:square, :rectangle]
  when 2 .. 4
    a=[a, b, c, d]
    first = a.first
    o = first + a[2]
    t = first + a[3]
    if o == 180 || t == 180
      [:parallelogram, :rhombus]
    else
      [:quadrilateral]
    end
  end
end
# Error class used in invalid_quadrilateral_spec. No need to change this code.
class QuadrilateralError < StandardError
end
