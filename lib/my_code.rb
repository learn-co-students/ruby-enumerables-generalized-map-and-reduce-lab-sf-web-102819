def map(array)
 results = []
 i = 0 
 while i < array.length do
   results.push(yield(array[i]))
  i += 1 
 end
results
end

def reduce(array, starting = nil)
  if starting
    total = starting
    i = 0
  else
    total = array[0]
    i = 1
  end
    while i < array.length do
      total = yield(total, array[i])
      puts total
    i += 1
    end
    if total === nil
      return false 
    end
  total
end