my_map = %{a: 1, b: 2, c: 3}
IO.inspect(my_map)

# Pattern matching maps:
%{a: first, b: second, c: third} = my_map

IO.puts("\nfirst: #{first}")
IO.puts("second: #{second}")
IO.puts("third: #{third}\n")

# extracting just only on element from a map
%{b: second} = my_map
IO.puts("Just the second: #{second}")

# accessing values via dot notation:
IO.puts("Using dot notation: #{my_map.a}\n")

# strings as keys don't work with dot notation 
# and need to be defined using arrows ("=>")
IO.puts("Maps defined using arrow:")
my_map2 = %{"a" => 1, "b" => 2, "c" => 3}
IO.inspect(my_map2)

### Operating maps:

# Updating values inside a map
my_map2 = %{my_map2 | "c" => 4}
IO.puts("\nAfter updating 3 to 4:")
IO.inspect(my_map2)
