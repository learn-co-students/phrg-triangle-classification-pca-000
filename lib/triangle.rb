require 'pry'

class Triangle

  #access to my attributes!
  attr_accessor :bottom, :left, :right, :equilateral, :isosceles, :scalene

  def initialize(bottom, left, right)
    #When a Triangle is created, it has these attributes
    @bottom = bottom
    @left = left
    @right = right
  end


  def valid?
    #what would cause the triangle to not be gucci?
    if bottom == 0 || left == 0 || right == 0
      #any sides are 0? gtfo
      raise TriangleError
        puts error.message
      #if the sum of the lengths of any two sides doesn't exceed the length of the third side, gtfo
    elsif (bottom + left) <= right || (bottom + right) <= left || (left + right) <= bottom
      raise TriangleError
        puts error.message
    end
  end

  def kind
    #check first to see if the triangle is gucci
    valid?
    #now that we know it's gucci... evaluate the sides and determine what kind it is
    if bottom == left && bottom == right
      @kind = :equilateral
    elsif bottom == left || bottom == right || left == right
      @kind = :isosceles
    else
      @kind = :scalene
    end
  end

  class TriangleError < StandardError
  #return an error for when there is one. Deliver a message if there is an error.
    def message
      "Yo bruh, that ain't even a triangle!, wutchu mean?!"
    end
  end

end

