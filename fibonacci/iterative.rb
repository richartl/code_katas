def fibonacci(number)
  fibonacci_2 = 0
  fibonacci_1 = 1

  p fibonacci_2
  p fibonacci_1
  for index in 0..number
    fibonacci_aux = fibonacci_2 + fibonacci_1
    fibonacci_2 = fibonacci_1
    fibonacci_1 = fibonacci_aux
    p fibonacci_1
  end
end

fibonacci(10)
