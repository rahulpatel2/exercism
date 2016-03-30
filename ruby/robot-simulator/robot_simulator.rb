# Robot Simulater In Ruby
class Robot
  attr_accessor :bearing
  def initialize
    @directions = [:north, :east, :south, :west]
  end

  def orient(direction)
    raise ArgumentError unless @directions.include?(direction)
    @bearing = direction
  end

  def turn_right
    return @bearing = :north if @bearing == :west
    @bearing = @directions[@directions.index(@bearing) + 1]
  end

  def turn_left
    return @bearing = :west if @bearing == :north
    @bearing = @directions[@directions.index(@bearing) - 1]
  end

  def at(x, y)
    @x = x
    @y = y
  end

  def coordinates
    [@x, @y]
  end

  def advance
    @x += 1 if @bearing == :east
    @x -= 1 if @bearing == :west
    @y += 1 if @bearing == :north
    @y -= 1 if @bearing == :south
  end
end
# Simulator class
class Simulator
  def instructions(str)
    @instruction = { 'L' => :turn_left, 'R' => :turn_right, 'A' => :advance }
    (0...str.length).each_with_object([]) do |i, output|
      output << @instruction[str[i]]
    end
  end

  def place(robot, x: -2, y: 1, direction: :east)
    robot.orient(direction)
    robot.at(x, y)
    robot
  end

  def evaluate(robot, str)
    ins = instructions(str)
    ins.each do |value|
      robot.send(value.to_s)
    end
    robot
  end
end
