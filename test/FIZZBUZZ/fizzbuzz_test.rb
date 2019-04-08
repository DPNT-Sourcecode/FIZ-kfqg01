require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test

  def test_fizzbuzz
    assert_equal "fizz", FizzBuzz.new.fizz_buzz(3), 'App should return fizz for multiple of 3'
    assert_equal "fizz", FizzBuzz.new.fizz_buzz(31), 'App should return fizz for numbers having 3 in them'
    assert_equal "buzz", FizzBuzz.new.fizz_buzz(5), 'App should return buzz for multiple of 5'
    assert_equal "buzz", FizzBuzz.new.fizz_buzz(51), 'App should return buzz for numbers having 5 in them'
  end

end


