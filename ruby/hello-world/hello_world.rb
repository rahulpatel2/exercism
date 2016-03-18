# Class For Print Hello World
class HelloWorld
  def self.hello(name = nil)
    hello_name = 'Hello, World!' if name.nil?
    hello_name = 'Hello, ' + name + '!' unless name.nil?
    return hello_name
  end
end
