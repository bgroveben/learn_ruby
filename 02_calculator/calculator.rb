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
