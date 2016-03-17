# Class For Print Hello World
class HelloWorld
  def self.hello(name = nil)
    return 'Hello, World!' if name.nil?
    'Hello, ' + name + '!'
  end
end
