def fib(num)
  array = [1,1]
  until num == 2
    array << (array[-1] + array[-2]) if array.count > 1
    num -= 1
  end
  array.last
end

def recursive_fib(n, cache = {})
  if n == 0 || n == 1
    return n
  end
  cache[n] ||= better_fib(n-1, cache) + better_fib(n-2, cache)
end

puts recursive_fib(200)
puts fib(200)
