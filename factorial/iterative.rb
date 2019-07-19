def factorial(number)
  return number if number == 1
  factorial = 1
  while number > 1 do
    factorial *= number
    number -= 1
  end
  factorial
end

p factorial(10)
