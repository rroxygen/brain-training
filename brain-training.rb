puts "\n |Welcome to train your brain|\n
Choose one of the below options:\n
1. Multiplications
2. Divisions
\n"

case gets.chomp

when "1"
#variables
  multiplicand = rand 10..100
  multiplier = rand 10..100

  def first_digit(number)
    return number.digits.reverse.first
  end

  def last_digit(number)
    return number.digits.reverse.last
  end

  hint_one = (first_digit(multiplicand)*10)*(first_digit(multiplier)*10)
  hint_two = (last_digit(multiplicand))*(last_digit(multiplier))
  hint_three = ((first_digit(multiplicand)*10)*(last_digit(multiplier)))
  hint_four = (last_digit(multiplicand))*(first_digit(multiplier)*10)

  puts "how much is #{multiplicand} X #{multiplier}?\n"
  puts "Insert your solution:  "
  result = (multiplicand*multiplier)

  until gets.chomp == result do
   puts "\n wrong, do you want help?y/n"
   if gets.chomp == "y"
     puts "#{(first_digit(multiplicand)*10)} X #{(first_digit(multiplier)*10)}"+" = #{hint_one}\n#{(first_digit(multiplicand)*10)} X #{(last_digit(multiplier))}"+" = #{hint_three}\n#{(last_digit(multiplicand))} X #{(last_digit(multiplier))}"+" = #{hint_two}\n#{(last_digit(multiplicand))} X #{(first_digit(multiplier)*10)}"+" = #{hint_four}\n#\n type new solution"
   else puts "try again"
   end
when "2"

  #variables
  dividend = rand 100..1000
  divisor = rand 10..100
  quotient = (dividend/divisor)

  #displaying values
  puts "how much is #{dividend} / #{divisor}?"
  puts "Insert your solution:  "


  if gets.chomp == quotient
    puts "well done"
  else
    puts "wroooong"
  end
else
  puts "i don't understand your selection"
end
