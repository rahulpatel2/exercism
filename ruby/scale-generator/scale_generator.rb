# Scale Generator in Ruby
class Scale
  CHROMATIC_VALUES = %w(C C# D D# E F F# G G# A A# B).freeze
  FLAT_VALUES = %w(C Db D Eb E F Gb G Ab A Bb B).freeze
  CHROMATIC_KEYS = %w(G D A E B F# e b f# c# g# d#).freeze
  FLAT_KEYS = %w(F Bb Eb Ab Db Gb d g c f bb eb).freeze
  STEP = { 'm' => 1, 'M' => 2, 'A' => 3 }.freeze

  def initialize(starting_note, scale_type, intervals = nil)
    @starting_note = starting_note
    @scale_type = scale_type
    @intervals = intervals
    @flag = @intervals
    @capital = @starting_note.capitalize
  end

  def name
    @starting_note.upcase + ' ' + @scale_type.to_s
  end

  def pitches
    scale = FLAT_KEYS.include?(@starting_note) ? FLAT_VALUES : CHROMATIC_VALUES
    if @flag.nil?
      return CHROMATIC_VALUES if @capital == 'C'
      index = scale.index(@capital)
      scale[index..scale.length - 1] + scale[0..index - 1]
    else
      @flag = nil
      index = 0
      @intervals.each_char.with_object([]) do |e, a|
        a << pitches[index]
        index += STEP[e]
      end
    end
  end
end
