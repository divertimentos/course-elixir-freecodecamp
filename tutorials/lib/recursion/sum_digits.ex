defmodule Tutorials.Recursion.SumDigits do
  def upto(0), do: 0

  def upto(num) do
    # OG version
    # num + upto(num - 1)

    # improved version that takes less memory:
    upto_tail(num)
  end

  # This version is called Public Function:
  def upto_tail(num, acc \\ 0)

  # OG version:
  def upto_tail(0, acc), do: acc

  def upto_tail(num, acc) do
    upto_tail(num - 1, acc + num)
  end
end

