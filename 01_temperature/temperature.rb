def ftoc(temp)
  temp = ((temp - 32) * 5.0 / 9.0).round(2)
end

def ctof(temp)
  temp = (temp * (9.0 / 5.0) + 32).round(2) 
end
