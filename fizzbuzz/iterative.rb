(1..100).each do |item|
  result = ''
  result += 'fizz' if item % 3 == 0
  result += 'buzz' if item % 5 == 0
  result = item if result.empty?
  p result
end
