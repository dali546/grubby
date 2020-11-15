require 'test_helper'
require 'grubby/commands/add_entry/add entry to a g_r_u_b install'

class Grubby::Commands::AddEntry::Add Entry to a GRUB installTest < Minitest::Test
  def test_executes_add_entry_add entry to a g_r_u_b install_command_successfully
    output = StringIO.new
    options = {}
    command = Grubby::Commands::AddEntry::Add Entry to a GRUB install.new(options)

    command.execute(output: output)

    assert_equal "OK\n", output.string
  end
end
