class Triangle
  # write code here
  attr_accessor :side_a, :side_b, :side_c

  def initialize(s_a, s_b, s_c)
    @side_a = s_a
    @side_b = s_b
    @side_c = s_c
  end

  def kind
    if (@side_a <= 0) || (@side_b <= 0) || (@side_c <= 0)
      raise TriangleError
    elsif (@side_a + @side_b <= @side_c) || (@side_a + @side_c <= @side_b) || (@side_b + @side_c <= @side_a)
      raise TriangleError
    else
      if((@side_a == @side_b) && (@side_b == @side_c))
        :equilateral
      elsif((@side_a == @side_b) || (@side_b == @side_c) || (@side_c == @side_a))
        :isosceles
      else
        :scalene
      end
    end
  end

  class TriangleError < StandardError
    def message
      "illegal traingle"
    end
  end
end
