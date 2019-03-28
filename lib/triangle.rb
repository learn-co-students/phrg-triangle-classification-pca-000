class Triangle
  attr_accessor :equilateral, :isosceles, :scalene, :side_a, :side_b, :side_c

  def initialize(side_a, side_b, side_c)
    @side_a = side_a
    @side_b = side_b
    @side_c = side_c
  end

  def kind
    error
    if side_a == side_b && side_a == side_c
      @kind = :equilateral

    elsif side_a == side_b || side_a == side_c || side_b == side_c
      @kind = :isosceles

    else
      @kind = :scalene
    end
  end

   def error
    if side_a == 0 || side_b == 0 || side_c == 0
      raise TriangleError
    elsif (side_a + side_b) <= side_c || (side_a + side_c) <= side_b || (side_b + side_c) <= side_a
      raise TriangleError
    end
  end

   class TriangleError < StandardError
   end

end
