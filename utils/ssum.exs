defmodule Main do
  def sum(0, acc) do
    acc
  end

  def sum(first, acc) do
    sum(first - 1, acc + 1)
  end
end

IO.puts("3 + 2 = #{Main.sum(3, 2)}")
IO.puts("10 + 10 = #{Main.sum(10, 10)}")
IO.puts("3 + 5 = #{Main.sum(3, 5)}")
