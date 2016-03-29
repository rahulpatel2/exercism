#Wordy in Ruby
class WordProblem
  def initialize(ques)
    @ques = ques
  end

  def answer
    exp = @ques.gsub('What is ', '').delete('?').delete(' ')
    exp = generate(exp)
    raise ArgumentError if exp =~ /[^0-9+-\/\*]/
    eval(exp)
  end

  def generate(exp)
    exp.gsub('plus', '+').gsub('minus', '-').gsub('multipliedby', '*').gsub('dividedby', '/')
  end
end
