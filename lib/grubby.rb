require 'thor'
require "grubby/version"

module Grubby
  class App < Thor
    class Error < StandardError; end

    desc "version", "Get gem version"
    def version
      puts Grubby::VERSION
    end
  end
end
