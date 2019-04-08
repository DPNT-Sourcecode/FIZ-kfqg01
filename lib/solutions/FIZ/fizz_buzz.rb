# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    returning_string = ""+ is_fizz?(number) + is_buzz?(number)+ is_deluxe?(number)
    if returning_string == ""
      return number
    else
      return returning_string.strip()
    end
  end

  private
  def is_fizz?(number)
    return "fizz " if  number % 3 ==0 || number.to_s.chars.include?("3")
    return ""
  end

  def is_buzz?(number)
    return "buzz " if number%5 == 0 || number.to_s.chars.include?("5")
    return ""
  end

  def is_deluxe?(number)
    return "fake deluxe " if (number%3==0 && number.to_s.chars.include?("3") && number%2 == 1) || (number%5==0 && number.to_s.chars.include?("5")&& number%2 == 1)
    return "deluxe " if (number%3==0 && number.to_s.chars.include?("3")) || (number%5==0 && number.to_s.chars.include?("5"))
    return ""
  end

  def is_fake?(number)
    return "fake " if  number%2 == 1
    return ""
  end
end
