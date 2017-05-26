def add(a, b)
  result = a + b
  result
end

def subtract(a, b)
  result = a - b
  result
end

def sum(array)
  result = array.reduce(:+)
  return 0 if array == []
  result
end

def multiply(array)
  result = array.reduce(:*)
  result
end

def power(a, b)
  result = a ** b
  result
end

def factorial(num)
  result = 1
  return num if num == 0
  until num == 0
    result *= num
    num -= 1
  end

  result
end
