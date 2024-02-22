# Tutorials Project

**TODO: Add description**

## Installation

If [available in Hex](https://hex.pm/docs/publish), the package can be installed
by adding `tutorials` to your list of dependencies in `mix.exs`:

```elixir
def deps do
  [
    {:tutorials, "~> 0.1.0"}
  ]
end
```

Documentation can be generated with [ExDoc](https://github.com/elixir-lang/ex_doc)
and published on [HexDocs](https://hexdocs.pm). Once published, the docs can
be found at <https://hexdocs.pm/tutorials>.

## Recursion

Ok, let's jump straight to where it hurts. 



> Sem rodinha, sem bandaid, a vida é uma piscina de Merthiolate e você ralou o joelho, baby!

Function overloading is when we create copies of an original function. We use the overloading feature to create two twin functions named `upto()`. They're different, however. The first one is just a base case, it's the halt function. Whenever it receives the halt parameter (which is `0` here), it will return `0`. 

The other function will print the parameter it receives, but instead of halting, it will returning a call of itself, but with a `(param - 1)` as a parameter. This will keep invoking the function indefinitely until it halts itself, which is when 0 is received/returned.

Ok, I understand recursion IN THEORY. I just need to let it settle and keep practicing. The function is recursive because it features a recursive call.

The function overload is interesting because it enables the module to call both twin functions when compiling.



> Fun fact: I couldn't understand recursion the last time I tried, back in 2018; but I'm understanding now. The level of difficulty is way higher, but my mind seems more prepared as well.



![recursion-function-explained](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/assets/elixir-recursion.png)
