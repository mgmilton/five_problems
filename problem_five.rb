# Problem 5
# Write a program that outputs all possibilities to put + or - or nothing between the numbers 1, 2, ..., 9 (in this order) such that the result is always 100. For example: 1 + 2 + 34 – 5 + 67 – 8 + 9 = 100.
#
require "pry"

def solutions(accumulator = [], range)
  range_array = range.to_a
  if range_array.size == 0
    if sum_array_with_operators(accumulator.reverse) == 100
      puts accumulator.join(" ") + " = 100"
    end
  else
    head, *tail = *range_array
    if accumulator.size == 0
      solutions([head], tail)
    else
      solutions(accumulator + [:+, head], tail)
      solutions(accumulator + [:-, head], tail)
    end
    if tail.size > 0
      tail[0] = (head * 10) + tail[0]
      solutions(accumulator, tail)
    end
  end
end

# Arrives like this [1, :+, 2, :-, 3, :+, 5]
def sum_array_with_operators(array)
  if array.size == 1
    array[0]
  else
    num, operator, *tail = *array
    sum_array_with_operators(tail).send(operator, num)
  end
end

solutions([], (1..9).to_a)
