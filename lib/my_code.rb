def map(s)
  new = []
  i = 0
  while i < s.length
    new.push(yield(s[i]))
    i += 1
  end
  new
end

def reduce(s, sp=nil)
  if sp
    total = sp
    i = 0
  else
    total = s[0]
    i = 1
  end
  while i < s.length
    total = yield(total, s[i])
    i += 1
  end
  total
end
  