defmodule Main do
  def sum(0, acc) do
    acc
  end

  def sum(first, acc) do
    sum(first - 1, acc + 1)
  end
end

IO.puts(Main.sum(3, 2))
IO.puts(Main.sum(10, 10))
IO.puts(Main.sum(3, 5))
