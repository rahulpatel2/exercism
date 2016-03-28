# Tringle in RUBY
class Triangle
  def initialize(*args)
    @sides = args.sort
  end

  def kind
    raise TriangleError if @sides[2] >= @sides[0] + @sides[1]
    tringle_names = { 1 => :equilateral, 2 => :isosceles, 3 => :scalene }
    tringle_names[@sides.uniq.length]
  end
end
class TriangleError < Exception
end
