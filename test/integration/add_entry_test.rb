require 'test_helper'
require 'grubby/commands/add_entry'

class Grubby::Commands::AddEntryTest < Minitest::Test
  def test_executes_grubby_help_add_entry_command_successfully
    output = `grubby help add_entry`
    expected_output = <<-OUT
Commands:
    OUT

    assert_equal expected_output, output
  end
end
