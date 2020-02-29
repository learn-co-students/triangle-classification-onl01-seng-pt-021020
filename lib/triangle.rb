require 'pry'


class Triangle
  class TriangleError < StandardError
  end


  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def valid?
    sides = [@side1, @side2, @side3]
    non_negative = sides.all? {|side| side > 0}
    additions = []
    # binding.pry
    3.times do
      additions << (sides[0] + sides[1] > sides[2])
      side = sides.shift
      sides << side
    end
    non_negative && additions.all?
  end

  def kind
    if valid?
      if @side1 == @side2 && @side1 == @side3
        :equilateral
      elsif @side1 == @side2 || @side1 == @side3 || @side2 == @side3
        :isosceles
      else
        :scalene
      end
    else
      raise TriangleError
    end
  end

end
