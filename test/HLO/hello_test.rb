require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'HLO'

class ClientTest < Minitest::Test

  def test_hello
    assert_equal "Hello, soroush!", Hello.new.hello("soroush"), 'App should return a string'
  end

end
