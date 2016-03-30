# Robot Simulater In Ruby
class Robot
  def initialize
    @directions = [:north, :east, :south, :west]
  end

  def orient(direction)
    raise ArgumentError unless @directions.include?(direction)
    @current_direction = direction
  end

  def bearing
    @current_direction
  end

  def turn_right
    return @current_direction = :north if @current_direction == :west
    @current_direction = @directions[@directions.index(@current_direction) + 1]
  end

  def turn_left
    return @current_direction = :west if @current_direction == :north
    @current_direction = @directions[@directions.index(@current_direction) - 1]
  end

  def at(x, y)
    @x = x
    @y = y
  end

  def coordinates
    [@x, @y]
  end

  def advance
    @x += 1 if @current_direction == :east
    @x -= 1 if @current_direction == :west
    @y += 1 if @current_direction == :north
    @y -= 1 if @current_direction == :south
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
      robot.advance if value == :advance
      robot.turn_left if value == :turn_left
      robot.turn_right if value == :turn_right
    end
    robot
  end
end
