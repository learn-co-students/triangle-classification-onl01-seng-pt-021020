class Triangle
  attr_accessor :side_1, :side_2, :side_3, :kind, :side_array
  def initialize(side_1, side_2, side_3)
    @side_1 = side_1
    @side_2 = side_2
    @side_3 = side_3
    @side_array = [side_1, side_2, side_3]
  end
  def kind
    if (@side_1 + @side_2) <= @side_3 || (@side_2 + @side_3) <= @side_1 || (@side_3 + @side_1) <= @side_2
      begin
        raise TriangleError
      # rescue TriangleError => error
        puts error.message
      end
    elsif self.side_array.uniq.size == 1
      self.kind = :equilateral
    elsif self.side_array.uniq.size == 2
      self.kind = :isosceles
    else
      self.kind = :scalene
    end
  end
  class TriangleError < StandardError
    # triangle error code
  end
end
