def factorial_one(num)
  product = num
  until num == 1
    num -= 1
    product = product * num
  end
  product
end

def factorial_two(num, product = num)
  if num == 1
    product
  else
    num -= 1
    product = num * product
    factorial_two(num, product)
  end
end

def factorial_three(num)
  if num == 1
    1
  else
    num * factorial_three(num - 1)
  end
end

p factorial_three(5)
