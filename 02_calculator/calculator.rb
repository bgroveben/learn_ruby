def add(a, b)
  a + b
end

def subtract(a, b)
  a - b
end

def sum(ary)
  if ary.empty?
    0
  else
    ary.inject(:+)
  end
end

def multiply(*args)
  args.each.inject(:*)
end

def power(base, exponent)
  base ** exponent
end

def factorial(n)
  if n == 0
    1
  else
    n * factorial(n -1) 
  end
end
