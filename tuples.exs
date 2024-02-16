{a, _} = {1, 2}
IO.puts(a)

{:reply, msg, state} = {:reply, "Octavarium found!", ["Ocvatarium", "Louise", "Chicó"]}
IO.inspect("msg: #{msg}")
IO.inspect("state: #{state}")
