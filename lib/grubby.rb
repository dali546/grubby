require 'thor'
require 'json'
require "grubby/version"

module Grubby
  class App < Thor
    class Error < StandardError; end

    desc "info", "Print out device info"
    def info
      device_blocks = JSON.parse(`lsblk -Jf`)
      device_blocks["blockdevices"].flat_map { |d| d["children"] }.compact
        .each do |device|
        puts %Q(
          Device: #{device["name"]}
          Type: #{device["fstype"]}
          Mountpath: #{device["mountpoint"] || "Not Mounted"})
      end
    end

    desc "version", "Get gem version"
    def version
      puts Grubby::VERSION
    end
  end
end
