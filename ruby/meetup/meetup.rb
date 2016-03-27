# Meetup in Ruby
class Meetup
  def initialize(month, year)
    @month = month
    @year = year
  end

  def day(day_name, day_type)
    if day_type.to_s == 'teenth'
      Date.new(@year, @month, get_teenth_date(day_name))
    elsif day_type.to_s == 'last'
      Date.new(@year, @month, get_last_date(day_name))
    else
      Date.new(@year, @month, nth_day(day_name, day_type))
    end
  end

  def get_date(day_name, start_date, end_date)
    (start_date..end_date).each do |day|
      return day if get_day_name(day) == day_name.to_s.delete(':')
    end
  end

  def get_last_date(day_name)
    end_date = Date.new(@year, @month, -1).day
    get_date(day_name, end_date - 6, end_date)
  end

  def get_teenth_date(day_name)
    get_date(day_name, 13, 19)
  end

  def nth_day(day_name, day_type)
    return get_date(day_name, 1, 7) if day_type.to_s == 'first'
    return get_date(day_name, 8, 14) if day_type.to_s == 'second'
    return get_date(day_name, 15, 21) if day_type.to_s == 'third'
    get_date(day_name, 22, 28)
  end

  def get_day_name(day)
    year_string = @year.to_s + '-' + @month.to_s + '-' + day.to_s
    Date.parse(year_string).strftime('%A').downcase
  end
end
