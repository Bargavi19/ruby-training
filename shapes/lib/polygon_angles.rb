# frozen_string_literal: true

def internal_angle(number_of_sides)
  # Below code calculates the
  # interior angle of a regular heptagon
  # interior angle of a regular octagon
  # interior angle of a regular nonagon
  # interior angle of a regular pentagon
  # interior angle of a regular hexagon
  # interior angle of a regular decagon
  case number_of_sides
  when 7
    s = sprintf "%.2f", "#{ 900.to_f / number_of_sides }" # this will give string as the answer with 2 decimals
    s.to_f # converting the above string to float
  when 8 then (6 * 180)/number_of_sides
  when 9 then (1260/number_of_sides)
  else        ((number_of_sides - 2) * 180) / number_of_sides
  end
end

def external_angle(number_of_sides)
  # Below code calculates the
  # exterior angle of a regular heptagon
  # exterior angle of a regular pentagon
  # exterior angle of a regular hexagon
  # exterior angle of a regular octagon
  # exterior angle of a regular nonagon
  # exterior angle of a regular decagon
  case number_of_sides
  when 7
    s = sprintf "%.2f", "#{360.to_f / number_of_sides }"
    s.to_f
  else 360 / number_of_sides
  end
end
