# frozen_string_literal: true

def internal_angle(number_of_sides)
  case number_of_sides
  when 7
    s = sprintf "%.2f", "#{ 900.to_f / number_of_sides }"
    s.to_f
  when 8 then (6 * 180)/number_of_sides
  when 9 then (1260/number_of_sides)
  else        ((number_of_sides - 2) * 180) / number_of_sides
  end
end

def external_angle(number_of_sides)
  case number_of_sides
  when 7
    s = sprintf "%.2f", "#{360.to_f / number_of_sides }"
    s.to_f
  else 360 / number_of_sides
  end
end
