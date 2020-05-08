def fibonacci(n)
  (0..n - 1).each_with_object([]) do |i, sequence|
    i == 0 || i == 1 ? sequence << i : sequence << sequence[-1] + sequence[-2]
  end
end

p fibonacci(10)

def fibonacci_rec(n)
  case n
  when 0..2 then [0, 1][0..n]
  else
    sequence = fibonacci_rec(n-1)
    sequence << sequence[-1] + sequence[-2]
  end
end

p fibonacci_rec(10)
