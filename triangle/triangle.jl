function is_triangle(sides)
  sides = sort(sides)
  sides[1] > 0 && sides[3] < sides[1] + sides[2]
end

function is_equilateral(sides)
  is_triangle(sides) && sides[1] == sides[2] && sides[2] == sides[3]
end

function is_isosceles(sides)
  sides = sort(sides)
  is_triangle(sides) && sides[1] == sides[2] || sides[2] == sides[3]
end

function is_scalene(sides)
  is_triangle(sides) && !is_isosceles(sides)
end
