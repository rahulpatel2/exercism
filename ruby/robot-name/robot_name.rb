# program that manages robot factory settings
class Robot
  def initialize
    @name = [*('A'..'Z')].sample(2).join + rand(999).to_s.center(3, rand(9).to_s)
  end

  def name
    @name
  end

  def reset
    initialize
  end
end
