def map(array)
  new = []
  index = 0
  while index < array.length
    new.push(yield(array[index]))
    index += 1
  end
  new
end

p map([1,2,3]){|x| x * -1}


def reduce(s, sp=nil)
  if sp
    accum = sp
    index = 0
  else
    accum = s[0]
    index = 1
  end
  while index < s.length
    accum = yield(accum, s[index])
    index += 1
  end
  accum
end

p reduce([1,2,3], 100){|memo, x|  x + memo }
