# frozen_string_literal: true

def quadrilateral(a, b, c, d)
  # Below code will check errors for
  # quadrilaterals with angles of 0
  # quadrilaterals with negative angles
  # illegal quadrilaterals that are not constructable
  angles = [a, b, c, d].sort
  if angles[0] <= 0 || angles.sum !=360
    raise QuadrilateralError
  end
  # Below code will check for
  # square or rectangle when all angles are the same
  # parallelogram or rhombus when there are 2 pairs of equal angles
  # quadrilateral when no angles are equal
  # quadrilateral when there is not 2 pairs of equal angles
  case angles.uniq.size # uniq method of array will give new array by removing duplicate elements
  when 1 then [:square, :rectangle]
  when 2 .. 4
    a=[a, b, c, d]
    first = a.first
    o = first + a[2]
    t = first + a[3]
    if [o, t].include? 180  #Parallelogram/rhombus will give the sum of adjacent angles as 180
      [:parallelogram, :rhombus]
    else #quadrilateral won't give the sum of adjacent angles as 180
       [:quadrilateral]
    end
  end
end
<<<<<<< HEAD
# Error class used in invalid_quadrilateral_spec. No need to change this code.
=======

# Error class used in quadrilateral_spec. No need to change this code.
>>>>>>> upstream/main
class QuadrilateralError < StandardError
end
