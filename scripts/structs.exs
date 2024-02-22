defmodule User do
  defstruct username: "", email: "", age: nil
end

defmodule Main do
  def main do
    user1 = %User{
      username: "Octavarium",
      age: 19,
      email: "octa@varium.dev"
    }

    %{username: usr} = user1
    IO.puts("The username is: '#{usr}'")

    ### updating values, as we do with Maps:
    user2 = %{user1 | age: 42}
    %{age: new_age} = user2
    IO.puts("Age updated from #{user1.age} to #{new_age}.")
  end
end

Main.main()
