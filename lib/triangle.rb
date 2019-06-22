class Triangle

  attr_accessor :s1, :s2, :s3

  def initialize(s1, s2, s3)
    @s1 = s1
    @s2 = s2
    @s3 = s3
  end

  def kind
    if @s1 + @s2 > @s3 && @s2 + @s3 > @s1 && @s3 + @s1 > @s2
      if @s1 == @s2 && @s2 == @s3
        :equilateral
      elsif @s1 == @s2 || @s2 == @s3 || @s3 == @s1
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

  class TriangleError < StandardError
    def message
      puts "This is not a valid triangle. Please make sure each side is larger than 0, and the sum of any two sides is greater than the third."
    end
  end

end
