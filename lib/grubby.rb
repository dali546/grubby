require 'thor'

class Grubby < Thor
  desc "example", "Prints Hello Worlds"
  def example
    puts "Hello World!"
  end
end

