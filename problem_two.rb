# Problem 2
# Write a function that combines two lists by alternatingly taking elements. For example: given the two lists [a, b, c] and [1, 2, 3], the function should return [a, 1, b, 2, c, 3].
require 'pry';

def alternates(array_1, array_2)
  temp = []
  count = 0

  while count <= array_1.length - 1 do
    temp << array_1[count]
    temp << array_2[count]
    count += 1
  end
  print temp
end

alternates( ["a", "b", "c"], [1, 2, 3])
