# frozen_string_literal: true

require 'thor'

module Grubby
  # Handle the application command line parsing
  # and the dispatch to various command objects
  #
  # @api public
  class CLI < Thor
    # Error raised by this runner
    Error = Class.new(StandardError)

    desc 'version', 'grubby version'
    def version
      require_relative 'version'
      puts "v#{Grubby::VERSION}"
    end
    map %w(--version -v) => :version

    desc 'info', 'Command description...'
    method_option :help, aliases: '-h', type: :boolean,
                         desc: 'Display usage information'
    def info(*)
      if options[:help]
        invoke :help, ['info']
      else
        require_relative 'commands/info'
        Grubby::Commands::Info.new(options).execute
      end
    end
  end
end
