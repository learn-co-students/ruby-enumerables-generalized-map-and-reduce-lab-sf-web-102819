# Your Code Here

def map(array) 
  new_arr = []
  array.each do |ele|
    new_ele = yield(ele)
    new_arr << new_ele
  end
  return new_arr
end

def reduce(array,start=0) 
  
  array.each do |ele|
  start =  yield(start,ele)
  end
  return start
end
  
  
 