require 'test_helper'
require 'grubby/commands/add_entry/add entry to a g_r_u_b install'

class Grubby::Commands::AddEntry::Add Entry to a GRUB installTest < Minitest::Test
  def test_executes_grubby_add_entry_help_add entry to a g_r_u_b install_command_successfully
    output = `grubby add_entry help add entry to a g_r_u_b install`
    expect_output = <<-OUT
Usage:
  grubby add entry to a g_r_u_b install

Options:
  -h, [--help], [--no-help]  # Display usage information

Command description...
    OUT

    assert_equal expected_output, output
  end
end
