chars = ~c"Octavarium"
IO.puts(~c"Hello, " ++ chars)
IO.puts("Is '#{chars}' a list: #{is_list(chars)}")
