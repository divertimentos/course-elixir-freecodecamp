### Case
defmodule Main do
  def main do
    list = [1, 2, 3, 4, 5]

    case Enum.at(list, 2) do
      1 -> "This won't print"
      3 -> "3 is a match"
      _ -> "Catch all"
    end
  end
end

defmodule Post do
  defstruct(
    id: nil,
    title: "",
    description: "",
    author: ""
  )

  def displayPost do
    post1 = %Post{id: 1, title: "Title n 1", author: "Julius Caesar"}

    switch =
      case post1 do
        %{author: "John Myung"} -> "Got a post from the bassist"
        %{author: "John Petrucci"} -> "Got a post from the guitarist"
        %{author: "James LaBrie"} -> "Got a post from the singer"
        %{author: "Julius Caesar"} -> "Got a post from the pre-emperor"
        %{author: "Mike Portnoy"} -> "Got a post from the drummer"
        %{author: "Jordan Ruddess"} -> "Got a post from the wizard"
        _ -> "Got a post from #{post1.author}"
      end

    IO.puts(switch)

    post1 = %{post1 | author: "Mike Mangini"}
    IO.inspect("New author is the former drummer: #{post1.author}")
  end
end

Post.displayPost()
