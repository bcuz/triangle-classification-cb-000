class TriangleError < StandardError
 # triangle error code
end

class Triangle
  # write code here

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3

  end

  def kind
    if @side1 < 1 or @side2 < 1 or @side3 < 1
      raise TriangleError
  elsif @side1 == @side2 and @side2 == @side3
      :equilateral
    elsif @side2 == @side3 or @side1 == @side3 or @side1 == @side2
      :isosceles
    else
      :scalene
    end
  end
end
