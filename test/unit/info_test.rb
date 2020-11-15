require 'test_helper'
require 'grubby/commands/info'

class Grubby::Commands::InfoTest < Minitest::Test
  def test_executes_info_command_successfully
    output = StringIO.new
    options = {}
    mock = Minitest::Mock.new
    mock.expect :device_blocks, '[]'
    Grubby::Commands::Info.stub :new, mock do
      command = Grubby::Commands::Info.new(options)
      command.device_blocks
    end
    command = Grubby::Commands::Info.new(options)

    command.execute(output: output)

    assert_equal "", output.string
  end
end
