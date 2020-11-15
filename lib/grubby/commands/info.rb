# frozen_string_literal: true

require_relative '../command'
require 'tty-table'
require 'json'

module Grubby
  module Commands
    class Info < Grubby::Command
      def initialize(options)
        @options = options
      end

      def execute(input: $stdin, output: $stdout)
        table = TTY::Table.new(
          ["Device","Type", "Mountpath"],
          device_blocks["blockdevices"].flat_map { |d| d["children"] }.compact
            .map do |d| 
              [d["name"], d["fstype"], d["mountpoint"] || "Not Mounted"]
            end
        )
        output.puts table.render
      end

      private

      def device_blocks
        @device_blocks ||= JSON.parse(`lsblk -Jf`)
      end
    end
  end
end
