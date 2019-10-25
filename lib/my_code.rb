# Your Code Here
def map(arr)
  i = 0 
  while i < arr.length do
    yield(arr[i])
    i += 1
  end 
end 