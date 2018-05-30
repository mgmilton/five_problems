# Problem 1
# Write three functions that compute the sum of the numbers in a given list using a for-loop, a while-loop, and recursion.

def while_sum(array)
  i = 0
  sum = 0
  while i <= (array.length-1)
    sum += array[i]
    i += 1
  end
  sum
end

def for_sum(array)
  sum = 0
  for i in array
    sum += i
  end
  sum
end

def recursive_sum(array, n = array.length - 1)
  if n == 0
    return array[n]
  else
    sum = array[n] + recursive_sum(array, n-1)
  end
    sum
end

puts recursive_sum([2,3,5])
