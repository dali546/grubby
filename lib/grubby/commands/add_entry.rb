# frozen_string_literal: true

require 'thor'

module Grubby
  module Commands
    class AddEntry < Thor

      namespace :add_entry

      desc 'add entry to a g_r_u_b install', 'Command description...'
      method_option :help, aliases: '-h', type: :boolean,
                           desc: 'Display usage information'
      def add entry to a g_r_u_b install(*)
        if options[:help]
          invoke :help, ['add entry to a g_r_u_b install']
        else
          require_relative 'add_entry/add entry to a g_r_u_b install'
          Grubby::Commands::AddEntry::Add Entry to a GRUB install.new(options).execute
        end
      end
    end
  end
end
