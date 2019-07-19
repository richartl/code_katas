def fibonacci(number)
  return number if number < 2
  last_fibonacci = fibonacci(number - 1) + fibonacci(number - 2)
  return last_fibonacci
end

for index in 0..10 do
  p fibonacci(index)
end
