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
      
    end 
    
  end 




end
