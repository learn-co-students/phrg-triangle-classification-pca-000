class Triangle
  # write code here   attr_accessor :equilateral, :isosceles, :scalene
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











































# require 'pry'

# class Triangle

#   attr_accessor :equilateral, :isosceles, :scalene

#   def initialize(s1, s2, s3)
#     @s1 = s1
#     @s2 = s2
#     @s3 = s3
#   end
# #binding.pry
#   def kind
#     if
#       @s1 == @s2 && @s2 == @s3
#       :equilateral
#     elsif
#       @s1 == @s2 || @s2 == @s3 || @s3 == @s1
#       :isosceles
#     else
#       :scalene
#     end
#   end

#   def valid

