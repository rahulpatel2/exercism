# Program fro conversation with bob
class Bob
  def hey(text)
    if text == text.upcase && text =~ /[a-zA-Z]+/
      'Whoa, chill out!'
    elsif text[-1] == '?'
      'Sure.'
    elsif text.strip.empty?
      'Fine. Be that way!'
    else
      'Whatever.'
    end
  end
end
