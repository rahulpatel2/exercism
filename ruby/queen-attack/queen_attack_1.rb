# Queen Attack In Ruby
class Queens

  def initialize(args = nil)
    if args.nil?
      @white = [0, 3]
      @black = [7, 3]
    else
      raise ArgumentError if args[:white] == args[:black]
      @white = args[:white]
      @black = args[:black]
    end
    @chess_board = Array.new(8){Array.new(8,'_')}
  end

  def white
    @white
  end

  def black
    @black
  end

  def to_s
    @chess_board[@white[0]][@white[1]] = 'W'
    @chess_board[@black[0]][@black[1]] = 'B'
    @chess_board.each_with_object([]) do |rows, result|
      result << rows.join(" ")
    end.join("\n")
  end

  def attack?

    white[0] == black[0] || white[1] == white[1] || is_diagonal? 
  end

  def is_diagonal?
    (white[0] - black[0]).abs = (white[1] = black[1]).abs
  end

end