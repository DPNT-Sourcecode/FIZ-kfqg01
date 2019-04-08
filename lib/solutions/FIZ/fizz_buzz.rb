# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    return "fizz buzz fake deluxe" if is_deluxe?(number) && (is_fizz?(number) && is_buzz?(number)) && is_fake?(number)
    return "fizz buzz deluxe" if is_deluxe?(number) && (is_fizz?(number) && is_buzz?(number))
    return "fizz fake deluxe" if is_deluxe?(number) && is_fizz?(number) && is_fake?(number)
    return "fizz deluxe" if is_deluxe?(number) && is_fizz?(number)
    return "buzz fake deluxe" if is_deluxe?(number) && is_buzz?(number) && is_fake?(number)
    return "buzz deluxe" if is_deluxe?(number) && is_buzz?(number)
    return "fake deluxe" if is_deluxe?(number) && is_fake?(number)
    return "deluxe" if is_deluxe?(number)
    return "fizz buzz" if is_fizz?(number) && is_buzz?(number)
    return "buzz" if is_buzz?(number)
    return "fizz"  if is_fizz?(number)
    return number

  end

  private
  def is_fizz?(number)
    return number % 3 ==0 || number.to_s.chars.include?("3")
  end

  def is_buzz?(number)
    return number%5 == 0 || number.to_s.chars.include?("5")
  end

  def is_deluxe?(number)
    number.to_s.chars.uniq.length == 1 && number > 10
  end

  def is_fake?(number)
    return number%2 == 1
  end
end
