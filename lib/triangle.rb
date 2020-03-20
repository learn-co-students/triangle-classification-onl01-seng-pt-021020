class Triangle
  
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end 
  
  def kind 
    if @first_side == @second_side && @second_side == @third_side
      :equilateral
    else 
      raise TriangleError
    end 
  end 




end
