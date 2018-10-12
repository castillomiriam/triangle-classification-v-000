class Triangle

  attr_accessor :one, :two, :three
  
   def initialize(one, two, three)
    @one = one
    @two = two
    @three = three
  end

  def kind
    if (s_one * s_two * s_three) == 0 || (s_one + s_two) <= s_three || (s_two + S_three) <= s_one || (s_three + s_one) <= s_two
      begin
        raise TriangleError
      end

  elsif s_one == s_two && s_one == s_three
      :equilateral
    elsif s_one == s_two || s_two == s_three || s_one == s_three
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
