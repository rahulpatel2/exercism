# Phone Number in Ruby
class PhoneNumber
  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    return '0000000000' if @phone_number =~ /[a-z]/
    mobile_number = @phone_number.gsub(/[^0-9]/, '')
    if mobile_number.length == 11 && mobile_number[0] == '1'
      mobile_number[-10, 10]
    elsif mobile_number.length == 10
      mobile_number
    else
      '0000000000'
    end
  end

  def area_code
    @phone_number[0, 3]
  end

  def to_s
    return '(' + @phone_number[1, 3] + ') ' + @phone_number[4, 3] + '-' + @phone_number[7, 4] if @phone_number.length == 11 && @phone_number[0] == '1'
    '(' + @phone_number[0, 3] + ') ' + @phone_number[3, 3] + '-' + @phone_number[6, 4]
  end
end
