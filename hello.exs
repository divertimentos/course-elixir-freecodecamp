defmodule Hello do
  def world() do
    IO.puts("Hello, Elixir!")
  end

  def named_world(name) do
    IO.puts("Hello, #{name}!")
  end
end
