# Phone Number in Ruby
class PhoneNumber
  def initialize(phone_number)
    @phone_number = phone_number
  end

  def number
    return '0000000000' if @phone_number =~ /[a-z]/
    mobile_number = @phone_number.gsub(/[^0-9]/, '')
    return mobile_number[-10, 10] if mobile_number.length == 11 && mobile_number[0] == '1'
    return mobile_number if mobile_number.length == 10
    '0000000000'
  end

  def area_code
    @phone_number[0, 3]
  end

  def to_s
    if @phone_number.length == 11 && @phone_number[0] == '1'
      '(' + @phone_number[1, 3] + ') ' + @phone_number[4, 3] + '-' + @phone_number[7, 4]
    else
      '(' + @phone_number[0, 3] + ') ' + @phone_number[3, 3] + '-' + @phone_number[6, 4]
    end
  end
end
