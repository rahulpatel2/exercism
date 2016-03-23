# Program to Calculate Space age
class SpaceAge
  def initialize(seconds)
    @earth_age = seconds.to_f / 31_557_600
    @space_ages = {
      'seconds' => seconds.to_f,
      'on_earth' => @earth_age,
      'on_mercury' => @earth_age / 0.2408467,
      'on_venus' => @earth_age / 0.61519726,
      'on_mars' => @earth_age / 1.8808158,
      'on_jupiter' => @earth_age / 11.862615,
      'on_saturn' => @earth_age / 29.447498,
      'on_uranus' => @earth_age / 84.016846,
      'on_neptune' => @earth_age / 164.79132
    }
  end

  def seconds
    @space_ages[__method__.to_s]
  end

  def on_earth
    @space_ages[__method__.to_s]
  end

  def on_mercury
    @space_ages[__method__.to_s]
  end

  def on_venus
    @space_ages[__method__.to_s]
  end

  def on_mars
    @space_ages[__method__.to_s]
  end

  def on_jupiter
    @space_ages[__method__.to_s]
  end

  def on_saturn
    @space_ages[__method__.to_s]
  end

  def on_uranus
    @space_ages[__method__.to_s]
  end

  def on_neptune
    @space_ages[__method__.to_s]
  end
end
