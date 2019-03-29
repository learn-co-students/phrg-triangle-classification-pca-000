class Triangle
  attr_accessor :equilateral, :isosceles, :scalene
  attr_reader :side_1, :side_2, :side_3
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
  end
  def kind
    valid
    if side_1 == side_2 && side_1 == side_3
      @kind = :equilateral
    elsif side_1 == side_2 || side_1 == side_3 || side_2 == side_3
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

   def valid
    if side_1 == 0 || side_2 == 0 || side_3 == 0
      raise TriangleError

    elsif (side_1 + side_2) <= side_3 || (side_1 + side_3) <= side_2 || (side_2 + side_3) <= side_1
      raise TriangleError
    end
  end

  class TriangleError < StandardError
  end
end

