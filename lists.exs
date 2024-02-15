### LISTS
lista = ["a", "b", "c"]
IO.puts("Lista: [#{Enum.join(lista, ", ")}]")

a = Enum.at(lista, 0)
IO.puts("This is the first character of the list '#{lista}': #{a}")

# Pattern Matching
IO.puts("\nPattern Matching:")
[first, second, third] = lista

IO.puts("First: #{first}")
IO.puts("Second: #{second}")
IO.puts("Third: #{third}")

# Using underscores
listb = ["a", "b", "c"]
[_, _, third] = listb

IO.puts("Using just the 3rd item: '#{third}'\n")

# Convenience functions: hd() and tl()
IO.puts("Using the convenience functions hd() and tl():")
IO.puts("Printing the first item using hd() (head): '#{hd(listb)}'")
IO.puts("Printing the remaining values using tl() (tail): '#{tl(listb)}'\n")

# Using Cons operator 
listc = ["a", "b", "c", "d", "e", "f", "g"]
[h | t] = listc

IO.puts("Using the pipe/cons operator:")
IO.puts("h will return the head: #{h}")
IO.puts("t will return the remaining items: #{t}")
