# Mines Sweeper In Ruby
class Board
  def self.transform(input)
    matrix = []
    input.each do |row|
      matrix << row.split('')
    end
    validate(matrix)
    minesweeper(matrix)
  end

  def self.minesweeper(matrix)
    (1...matrix.length - 1).each do |i|
      (1...matrix[i].length - 1).each do |j|
        if matrix[i][j].to_s == ' '
          number = count(matrix, i, j)
          number = ' ' if number == 0
          matrix[i][j] = number.to_s
        end
      end
    end
    to_string(matrix)
  end

  def self.count(matrix, i, j)
    count = 0
    points = [matrix[i - 1][j], matrix[i + 1][j], matrix[i][j + 1],
              matrix[i][j - 1], matrix[i - 1][j - 1], matrix[i + 1][j + 1],
              matrix[i - 1][j + 1], matrix[i + 1][j - 1]]
    points.each do |value|
      count += 1 if value.to_s == '*'
    end
    count
  end

  def self.to_string(matrix)
    output = []
    matrix.each do |row|
      output << row.join
    end
    output
  end

  def self.validate(matrix)
    length_validate(matrix)
    border_validate(matrix)
    char_validate(matrix)
  end

  def self.border_validate(matrix)
    size = matrix[0].length
    (1...matrix.length - 1).each do |i|
      raise ValueError if matrix[i][0].to_s != '|' ||  matrix[i][size - 1].to_s != '|'
    end
  end

  def self.length_validate(matrix)
    (0...matrix.length - 1).each do |i|
      raise ValueError if matrix[i].length != matrix[i + 1].length
    end
  end

  def self.char_validate(matrix)
    (0...matrix.length).each do |i|
      (0...matrix[i].length).each do |j|
        raise ValueError if matrix[i][j] =~ /[0-9a-zA-Z]/
      end
    end
  end
end
class ValueError < StandardError
end
