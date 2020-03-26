class Triangle

  def initialize(first_side, second_side, third_side)
    @first_side = first_side
    @second_side = second_side
    @third_side = third_side
    @all_sides = [first_side, second_side, third_side]
  end

  # def triangle_valid?
  #   if @first_side > 0 && @second_side > 0 && @third_side > 0
  #     return true
  #   else
  #     puts "illegal"
  #   end
  # end

  def kind
    if @first_side == @second_side && @second_side == @third_side
      :equilateral
    elsif @first_side == @second_side && @second_side != @third_side && @side_three != @first_side|| @second_side == @third_side && @third_side != @first_side || @first_side == @third_side && @first_side != @second_side
      :isosceles
    else @first_side != @second_side && @second_side != @third_side
      :scalene
    end
  end
end


#   class TriangleError < StandardError
#   end
# end
