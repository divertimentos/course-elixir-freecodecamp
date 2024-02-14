IO.puts("Octavarium")

# Basic pattern matching
"O" <> rest = "Octavarium"
IO.puts(rest)

name = "Octavarium"
# Checking if it's binary:

IO.puts("Is #{name} a binary: #{is_binary(name)}")

# Concatenate two strings
msg = "Hello, " <> name

IO.puts("Message: #{msg}!")

# Pattern Matching, Concatenation and Strings:
"Hello, " <> name = msg
IO.puts("Name: #{name}")

<<head, rest::binary>> = name
IO.puts("Head: #{head}")
IO.puts("Rest: #{rest}")
IO.puts("Is 'head' == ?'O' -> #{head == ?O}")

# Using different chunks of chars:
<<"Oc", "ta", rest::binary>> = name
IO.puts("Since 'oc', and 'ta' were extracted, the rest should be 'varium': #{rest}")

# You can also tell how many chars you want to collect:
<<head::binary-size(2), rest::binary>> = name
IO.puts("The head is assigned to two chars: #{head}")
IO.puts("Rest: #{rest}")
IO.puts("#{head} + #{rest}")
