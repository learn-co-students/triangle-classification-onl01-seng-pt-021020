class Triangle
  
  attr_accessor :triangle_length_1, :triangle_length_2, :triangle_length_3
  
  def initialize(triangle_length_1, triangle_length_2, triangle_length_3)
    @triangle_length_1 = triangle_length_1
    @triangle_length_2 = triangle_length_2
    @triangle_length_3 = triangle_length_3
  end
  
  def kind
  
    if @triangle_length_1 * @triangle_length_2 * @triangle_length_3 == 0 || @triangle_length_1 + @triangle_length_2 <= @triangle_length_3 || @triangle_length_1 + @triangle_length_3 <= @triangle_length_2 || @triangle_length_2 + @triangle_length_3 <= @triangle_length_1
      
      begin
        raise TriangleError
        puts error.message
      end
      
    elsif 
      @triangle_length_1 == @triangle_length_2 &&  @triangle_length_2 == @triangle_length_3
      :equilateral  
      
    elsif
      @triangle_length_1 == @triangle_length_2 || @triangle_length_1 == @triangle_length_3 || @triangle_length_2 == @triangle_length_3
      :isosceles
    
    else
      :scalene
    end
  
  end
      
    class TriangleError < StandardError
      
    end
  
end
