# Tringle in RUBY
class Triangle
  def initialize(*args)
    @sides = args.sort
  end

  def kind
    raise TriangleError if @sides[2] >= @sides[0] + @sides[1]
    return :equilateral if @sides.uniq.length == 1
    return :isosceles if @sides.uniq.length == 2
    :scalene
  end
end
class TriangleError < Exception
end
