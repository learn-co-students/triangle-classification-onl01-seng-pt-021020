class Triangle
  
  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
  end 
  
  
  def equilateral
    first_side == second_side == third_side
  end 
  
  def isosceles
  first_side = second_side && second_side != third_side
end 


end
