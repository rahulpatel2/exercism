# Meetup in Ruby
class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day_name, day_type)
    Date.new(@year, @month, nth_day(day_name, day_type))
  end

  def get_date(day_name, start_date, end_date)
    (start_date..end_date).each do |day|
      return day if get_day_name(day) == day_name.to_s.delete(':')
    end
  end

  def nth_day(day_name, day_type)
    last = Date.new(@year, @month, -1).day - 6
    day_hash = { 'first' => 1, 'second' => 8, 'third' => 15,
                 'fourth' => 22, 'teenth' => 13, 'last' => last }
    get_date(day_name, day_hash[day_type.to_s], day_hash[day_type.to_s] + 6)
  end

  def get_day_name(day)
    year_string = @year.to_s + '-' + @month.to_s + '-' + day.to_s
    Date.parse(year_string).strftime('%A').downcase
  end
end
