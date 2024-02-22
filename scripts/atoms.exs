# :nike
# :"The Nike brand"
# IO.puts(:nike)
# IO.puts(:"The Nike Brand")

{:error, reason} = {:error, "file not found"}
IO.puts(reason)

{:ok, msg} = {:ok, "Status 200: OK"}
IO.puts(msg)
