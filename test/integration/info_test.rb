require 'test_helper'
require 'grubby/commands/info'

class Grubby::Commands::InfoTest < Minitest::Test
  def test_executes_grubby_help_info_command_successfully
    output = `grubby help info`
    expected_output = <<-OUT
Usage:
  grubby info

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    assert_equal expected_output, output
  end
end
