require_relative '../test_helper'
require 'logging'

Logging.logger.root.appenders = Logging.appenders.stdout

require_solution 'FIZ'

class ClientTest < Minitest::Test

  def test_fizzbuzz
    assert_equal "fizz", FizzBuzz.new.fizz_buzz(3), 'App should return fizz for multiple of 3'
    assert_equal "fizz", FizzBuzz.new.fizz_buzz(31), 'App should return fizz for numbers having 3 in them'
    assert_equal "buzz", FizzBuzz.new.fizz_buzz(5), 'App should return buzz for multiple of 5'
    assert_equal "buzz", FizzBuzz.new.fizz_buzz(56), 'App should return buzz for numbers having 5 in them'
    assert_equal "buzz", FizzBuzz.new.fizz_buzz(52), 'App should return buzz for numbers having 5 in them'
    assert_equal "fizz buzz", FizzBuzz.new.fizz_buzz(53), 'App should return fizz buzz for numbers both fizz and buzz'
    assert_equal "fizz buzz", FizzBuzz.new.fizz_buzz(135), 'App should return fizz buzz for numbers both fizz and buzz'
    assert_equal 14, FizzBuzz.new.fizz_buzz(14), 'App should return the number if it does not have all the above conditions'
    assert_equal "deluxe", FizzBuzz.new.fizz_buzz(2222),'App should return deluxe if it is greater than 10 and all digits are identical'
    assert_equal "deluxe", FizzBuzz.new.fizz_buzz(1111),'App should return deluxe if it is greater than 10 and all digits are identical'
    assert_equal "deluxe", FizzBuzz.new.fizz_buzz(77),'App should return deluxe if it is greater than 10 and all digits are identical'
    assert_equal "fizz buzz deluxe", FizzBuzz.new.fizz_buzz(555),'App should return fizz buzz deluxe if the number is fizz, buzz and deluxe'
    assert_equal "deluxe", FizzBuzz.new.fizz_buzz(22),'App should return deluxe if it is greater than 10 and all digits are identical'
    assert_equal "fizz deluxe", FizzBuzz.new.fizz_buzz(333),'App should return fizz deluxe if it is fizz and it is deluxe'
    assert_equal "buzz deluxe", FizzBuzz.new.fizz_buzz(5555),'App should return buzz deluxe if it is buzz and it is deluxe'

  end
end


