# Problem 3
# Write a function that computes the list of the first 100 Fibonacci numbers. By definition, the first two numbers in the Fibonacci sequence are 0 and 1, and each subsequent number is the sum of the previous two. As an example, here are the first 10 Fibonnaci numbers: 0, 1, 1, 2, 3, 5, 8, 13, 21, and 34.


def fibby(iterations)
  num1 = 0
  num2 = 1
  num3 = 0
  (iterations-1).times do
    num3 = num2 + num1
    print(num1, num2, num3)
    num1 = num2
    num2 = num3
  end
end

fibby(10)
