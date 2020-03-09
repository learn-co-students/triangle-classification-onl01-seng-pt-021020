class Triangle
  
  attr_accessor :length_side_one, :length_side_two, :length_side_three
  
  def initialize(length_side_one, length_side_two, length_side_three)
    @length_side_one = length_side_one
    @length_side_two = length_side_two
    @length_side_three = length_side_three
  end
  
  def kind 
    legal_triangle?
    if length_side_one == length_side_two && length_side_two == length_side_three
        :equilateral
    elsif length_side_one == length_side_two || length_side_two == length_side_three || length_side_one == length_side_three
        :isosceles
      else
        :scalene
    end
  end
  
  def legal_triangle?
    legal_triangle = [(length_side_one + length_side_two > length_side_three), (length_side_one + length_side_three > length_side_two), (length_side_two + length_side_three > length_side_one)]
    [length_side_one, length_side_two, length_side_three].each do |side|
      legal_triangle << false if side <= 0 
    raise TriangleError if legal_triangle.include?(false)
    end
  end

  class TriangleError < StandardError
  end
  
  
end
