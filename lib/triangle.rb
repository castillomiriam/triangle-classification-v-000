class Triangle

  attr_accessor :one, :two, :three
  
   def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if (one * two * three) == 0 || (one + two) <= three || (two + three) <= one || (three + one) <= two
      begin
        raise TriangleError
      end

  elsif one == two && one == three
      :equilateral
    elsif one == two || two == three || one == three
       :isosceles
    else
       :scalene
    end
  end

  class TriangleError < StandardError
    def message
      puts "Is not a triangle"
    end
  end
end
