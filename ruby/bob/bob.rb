# Program fro conversation with bob
class Bob
  def hey(text)
    return 'Whoa, chill out!' if text == text.upcase && text =~ /[a-zA-Z]+/
    return 'Sure.' if text[-1] == '?'
    return 'Fine. Be that way!' if text.strip.empty?
    'Whatever.'
  end
end
