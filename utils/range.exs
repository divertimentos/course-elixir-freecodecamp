defmodule Main do
  def ranger(num, final \\ 0)

  def ranger(0, final), do: final

  def ranger(num, final) do
    IO.puts(final)
    ranger(num - 1, final + 1)
  end
end

Main.ranger(5)
