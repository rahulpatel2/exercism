# Program to Calculate Space age
class SpaceAge
  attr_accessor :seconds
  PLANETS = { 'on_mercury' => 0.2408467, 'on_venus' => 0.61519726,
              'on_mars' => 1.8808158, 'on_jupiter' => 11.862615,
              'on_saturn' => 29.447498, 'on_uranus' => 84.016846,
              'on_neptune' => 164.79132 }.freeze

  def initialize(seconds)
    @seconds = seconds
  end

  def on_earth
    @seconds.to_f / 31_557_600
  end

  PLANETS.each do |method_name, value|
    define_method(method_name) { on_earth / value }
  end
end
