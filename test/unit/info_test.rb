require 'test_helper'
require 'grubby/commands/info'

class Grubby::Commands::InfoTest < Minitest::Test
  def test_executes_info_command_successfully
    output = StringIO.new
    options = {}
    command = Grubby::Commands::Info.new(options)

    command.execute(output: output)

    assert_equal "OK\n", output.string
  end
end
