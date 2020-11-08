require "test_helper"
require 'grubby/cli'

class GrubbyTest < Minitest::Test
  def test_that_it_has_a_version_number
    refute_nil ::Grubby::VERSION
  end

  def test_command_version_returns_version
    assert_output(/#{::Grubby::VERSION}/) { Grubby::CLI.new.version }
  end
end
