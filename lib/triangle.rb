class Triangle
  
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end 
  
  def kind 
    if @first_side == @second_side && @second_side == @third_side
      :equilateral
    elsif @first_side == @second_side && @second_side != @third_side && @side_three != @first_side|| @second_side == @third_side && @third_side != @first_side || @first_side == @third_side && @first_side != @second_side
      :isosceles
    elsif @first_side != @second_side && @second_side != @third_side
      :scalene
    else @first_side = 0 && @second_side = 0 && @third_side = 0
        raise TriangleError
    end 
  end 
  
  class TriangleError < StandardError
    def message
      puts "This is an illegal triangle."
    end 
  end
end
