class Triangle
  
  attr_accessor :first_side, :second_side, :third_side
  
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end
  
  def kind 
    legal_triangle?
    if first_side == second_side && second_side == third_side
        :equilateral
    elsif first_side == second_side || second_side == third_side || first_side == third_side
        :isosceles
      else
        :scalene
    end
  end
  
  def legal_triangle?
    legal_triangle = [(first_side + second_side > third_side), (first_side + third_side > second_side), (second_side + third_side > first_side)]
    [first_side, second_side, third_side].each do |side|
      legal_triangle << false if side <= 0 
    raise TriangleError if legal_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end
  
  
end