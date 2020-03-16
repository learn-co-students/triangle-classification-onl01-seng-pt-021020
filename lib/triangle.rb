class Triangle
  attr_accessor :angle_1, :angle_2, :angle_3
  
    def initialize (angle_1, angle_2, angle_3)
        @angle_1 = angle_1
        @angle_2 = angle_2
        @angle_3 = angle_3
    end
    
    def kind
        if angle_1 <= 0 || angle_2 <= 0 || angle_3 <= 0
            begin
                raise TriangleError
            end
        elsif angle_1 == nil || angle_2 == nil || angle_3 == nil
            begin
                raise TriangleError
            end
        elsif angle_1 + angle_2 <= angle_3 || angle_1 + angle_3 <= angle_2 || angle_3 + angle_2 <= angle_1
            begin
                raise TriangleError
            end
        else
          if angle_1 == angle_2 && angle_1 == angle_3
              :equilateral
          elsif angle_1 == angle_2 || angle_1 == angle_3 || angle_2 == angle_3
              :isosceles
          else
              :scalene
          end
        end 
    end

  class TriangleError < StandardError
    puts "There's an Triangle Error"
  end
  
end 