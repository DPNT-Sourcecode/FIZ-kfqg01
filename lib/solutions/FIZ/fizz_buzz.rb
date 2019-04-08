# noinspection RubyUnusedLocalVariable
class FizzBuzz

  def fizz_buzz(number)
    if (number % 3 == 0 || number.to_s.chars.include?("3")) && (number % 5 == 0 || number.to_s.chars.include?("5"))
      return "fizz buzz"
    elsif number % 5 == 0 || number.to_s.chars.include?("5")
      return "buzz"
    else
      return "fizz"
    end
  end

end



