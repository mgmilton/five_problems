# Problem 4
# Write a function that given a list of non negative integers, arranges them such that they form the largest possible number. For example, given [50, 2, 1, 9], the largest formed number is 95021.

def rearranger(array)
  characters = array.map(&:to_s)
  characters.sort! {|x, y| y[0] <=> x[0]}
  characters.sort!.reverse!
  return characters.join("").to_i
end



puts rearranger([50, 2, 1, 9, 53, 100, 120])
