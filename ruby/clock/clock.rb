# Clock IN Ruby
class Clock
  def initialize(mintues)
    @minutes = mintues
  end

  def self.at(hours, min = 0)
    minutes = (hours * 60) + min
    Clock.new(minutes)
  end

  def ==(other)
    to_s == other.to_s
  end

  def +(other)
    Clock.new(@minutes + other)
  end

  def -(other)
    Clock.new(@minutes - other)
  end

  def to_s
    [@minutes / 60 % 24, @minutes % 60]
      .each_with_object([]) do |time, time_object|
        time_object << time.to_s.rjust(2, '0')
      end
      .join(':')
  end
end
