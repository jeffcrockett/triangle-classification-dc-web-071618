class Triangle
  attr_accessor :first, :second, :third
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    case [@first, @second, @third].uniq.length
      when 1
        return :equilateral
      when 2
        return :isosceles
      when 3
        return :scalene
    end
  end
end
