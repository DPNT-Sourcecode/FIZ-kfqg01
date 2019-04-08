require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test

  def test_fizzbuzz
    assert_equal "fizz", FizzBuzz.new.fizzbuzz(3), 'App should return fizz for multiple of 3'
  end

end
