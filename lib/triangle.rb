require 'pry'
class Triangle
  attr_accessor :a, :b, :c
def initialize(a, b, c)
  @a = a
  @b = b
  @c = c
end

def kind
  if a*b*c == 0 || a + b <= c || b + c <= a || c + a <= b
    begin
    raise TriangleError
  end
elsif a == b && a == c
      :equilateral
    elsif a == b || a == c || b == c
      :isosceles
    else a != b || a != c || b != c
      :scalene
end
end
  class TriangleError < StandardError
  end
end
