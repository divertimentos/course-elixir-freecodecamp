defmodule Tutorials.Recursion.PrintDigits do
  # Base case:
  def upto(0), do: 0

  def upto(nums) do
    # 3, 2, 1, 0
    IO.puts(nums)
    upto(nums - 1)
  end
end
