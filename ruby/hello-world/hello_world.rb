# Class For Print Hello World
class HelloWorld
  def self.hello(name = nil)
    return 'Hello, World!' if name.nil?
    return 'Hello, ' + name + '!' unless name.nil?
  end
end
