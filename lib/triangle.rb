require 'pry'

class Triangle

  attr_reader :a, :b, :c

  def initialize (a, b, c)
    @a = a
    @b = b
    @c = c
  end

  def kind
    if [a,b,c].all? {|x| x == 0}
     raise TriangleError
    elsif [a,b,c].one? {|x| x < 0}
      raise TriangleError
    elsif a + b <= c || b + c <= a || a + c <= b
      raise TriangleError
    else
      if a == b && b == c
        :equilateral
      elsif a == b || a == c || b == c
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
  end


end

binding.pry
0
