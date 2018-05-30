# Problem 2
# Write a function that combines two lists by alternatingly taking elements. For example: given the two lists [a, b, c] and [1, 2, 3], the function should return [a, 1, b, 2, c, 3].
require 'pry'

def alternates(array_1, array_2)
  temp = []
  array_1.each_with_inded do |value, index|
    binding.pry
    temp << array_1[index]
  end

end

alternates([a, b, c], [1, 2, 3] )
