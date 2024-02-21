lista = [1, 2, 3]

defmodule Post do
  defstruct(
    id: nil,
    title: "",
    description: "",
    author: ""
  )

  def editPost do
    post1 = %Post{id: 1, title: "Title n 1", author: "Guilherme Teixeira"}

    cond do
      post1.author == "Octavarium" -> "Editing a post from Octavarium"
      post1.author == "Guilherme Teixeira" -> "Editing a post from Guilherme Teixeira"
      true -> "This is a catch all!"
    end
  end
end

defmodule Main do
  def cond_pattern_match(list) do
    cond do
      # Matches the head of the list, which is 1
      hd(list) -> "Got a 1"
      true -> "Head is #{hd(list)}}"
    end
  end
end

# IO.puts(Post.editPost())
IO.puts(Main.cond_pattern_match(lista))
