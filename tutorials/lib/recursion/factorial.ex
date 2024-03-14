# MY VERSION:

# defmodule Tutorials.Recursion.Factorial do
#   def factorial(num, acc \\ 1)
#
#   def factorial(1, acc), do: acc
#
#   def factorial(num, acc) do
#     factorial(num - 1, acc * num)
#   end
# end

# OCTALLIUM's VERSION:
defmodule Tutorials.Recursion.Factorial do
  def of(1), do: 1
  def of(num), do: num * of(num - 1)
end
