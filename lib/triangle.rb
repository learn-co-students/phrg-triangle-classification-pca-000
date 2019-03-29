class Triangle
  # write code here
  attr_accessor :equilateral, :isosceles, :obtuse, :scalene
  def initialize(x, y, z)
    @x = x
    @y = y
    @z = z
  end

  def kind
    if @x <= 0 || @y <= 0 || @z <= 0
    raise Triangle::TriangleError
    elsif @x + @y <= @z || @y + @z <= @x || @x + @z <= @y
      raise Triangle::TriangleError
    elsif @x == @y && @y == @z
    :equilateral
    elsif @x != @y && @y != @z && @z != @x
    :scalene
    elsif (@x == @y && @x != @z)|| (@x == @z && @x != @y)||(@y == @z && @y != @x)
      :isosceles
    end

  end
  class TriangleError < StandardError
  end
end
