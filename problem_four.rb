# Problem 4
# Write a function that given a list of non negative integers, arranges them such that they form the largest possible number. For example, given [50, 2, 1, 9], the largest formed number is 95021.

require "pry"
def rearranger(array)
  characters = array.map(&:to_s)
  num = ""
  temp = []
  characters.each_with_index do |character, index|
    if character.length > 1
      temp << character[0].to_i
    else
      temp << array[index]
    end
  end
  binding.pry
end


puts rearranger([50, 2, 1, 9])
