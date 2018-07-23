class Triangle
  attr_accessor :first, :second, :third
  def initialize(first, second, third)
    @first = first
    @second = second
    @third = third
  end

  def kind
    if [@first, @second, @third].include?(0)
      raise TriangleError
    else 
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

  class TriangleError < StandardError
  def message 
    "A triangle cannot have a side of length 0."
  end
end
