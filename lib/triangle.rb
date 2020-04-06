class Triangle
  attr_accessor :side1, :side2, :side3

  def initialize(side1, side2, side3)
    @side1 = side1
    @side2 = side2
    @side3 = side3
  end

  def kind
   if(negative? == true || valid? == false)
     raise TriangleError
   elsif(equilateral?)
     :equilateral
   elsif(scalene?)
     :scalene
   elsif(isosceles?)
     :isosceles
   end
 end
end
