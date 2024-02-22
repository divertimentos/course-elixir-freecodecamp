# Part 2: Functional Programming Fundamentals with Elixir

# Tutorials Project

### Recursion 101

Ok, let's jump straight to where it hurts.

> Sem rodinha, sem bandaid, a vida é uma piscina de Merthiolate e você ralou o joelho, baby!

Function overloading is when we create copies of an original function. We use the overloading feature to create two twin functions named `upto()`. They're different, however. The first one is just a base case, it's the halt function. Whenever it receives the halt parameter (which is `0` here), it will return `0`.

The other function will print the parameter it receives, but instead of halting, it will returning a call of itself, but with a `(param - 1)` as a parameter. This will keep invoking the function indefinitely until it halts itself, which is when 0 is received/returned.

Ok, I understand recursion IN THEORY. I just need to let it settle and keep practicing. The function is recursive because it features a recursive call.

The function overload is interesting because it enables the module to call both twin functions when compiling.

> Fun fact: I couldn't understand recursion the last time I tried, back in 2018; but I'm understanding now. The level of difficulty is way higher, but my mind seems more prepared as well.

![recursion-function-explained](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/assets/elixir-recursion.png)

The explanation about Tail Recursion vs Head Recursion is interesting.

- **Tail Recursion** (ascending) is when a certain function calls itself as an immediate return each time, but with a different parameter.

- **Head Recursion** (return) is when we have an early recursion call, and then a code that will be returned, so it's put on hold until the recursion loop is satisfied.

Back in 2018 I was taught the return version, and now I believe that's why I got traumatized. Even now is a struggle to understand what's going on and why the `IO.puts()` is put on hold when you let it as the return and puts the recursive call before it. The result is reversed because the return version is a stack. Last in, first out (LIFO).

### Sum Digits using Recursion

Do create a summation (pt-br: Somatório) function, you need to provide a starting number as a parameter and set `0` as a halt step. To summate, the recursive function (e.g.: `upto()`) should sum the starting number with `upto(num -1)`. Like this:

```elixir
defmodule SumDigits do
    def upto(0), do: 0

    def upto(num) do
        num + upto(num -1)
    end
end
```

#### HINT: Compiling Mix modules with IEX:

- Open `iex` using `iex -S mix`

- Create an alias for the desired module using `alias Tutorials.Recursion.Sumdigits`, for example

- Run the function inside the `SumDigits` module using `SumDigits.upto(3)`, for example

- **Bonus hint: to recompile the module, use `recompile` or `r(SumDigits)`**

Back to the `SumDigits.upto()` function. This function is neither head recursive or tail recursive, it's just recursive. But we can convert it to a tail recursive one.

When creating recursive functions, parameters are quite important. For example, a tail version receives two parameters:

```elixir
def upto_tail(0, acc), do: acc

def upto_tail(num, acc) do
  upto_tail(num - 1, acc + num)
end
```

#### Public Functions

To be honest I couldn't understand what the public function added has to do with the calculation per se. The teacher said that it's more like a way to document the code. But documenting code by overloading a function like **thrice**?

> (Ok, as far as I understood, the Public Function defines optional parameters. Since they don't have body/return, it serves as a stablishment of official code, but as an information to the compiler not to break if a secondary parameter isn't provided.) 



### Recursive Factorial
