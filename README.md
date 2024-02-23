<!--toc:start-->

- [Functional Programming With Elixir - Full Course](#functional-programming-with-elixir-full-course)
- [Part 1: Elixir Fundamentals and Data Structures](#part-1-elixir-fundamentals-and-data-structures)
  - [What does Functional Programming mean?](#what-does-functional-programming-mean)
  - [What is Recursion (and why it's important)?](#what-is-recursion-and-why-its-important)
  - [Un-learning (aka _all that you know versus all that you don't_)](#un-learning-aka-all-that-you-know-versus-all-that-you-dont)
  - [Pattern Matching](#pattern-matching)
  - [Actor Model](#actor-model)
    - [Processes](#processes)
    - [Working](#working)
  - [Finally, the Hello World!](#finally-the-hello-world)
  - [Data Types in Elixir](#data-types-in-elixir)
    - [Atom](#atom)
    - [String](#string)
    - [Charlist](#charlist)
    - [Processes](#processes)
    - [Lists](#lists)
    - [Function Arity](#function-arity)
    - [Seeking help from documentation (Function Definition)](#seeking-help-from-documentation-function-definition)
      - [Extracting data from lists using pattern matching](#extracting-data-from-lists-using-pattern-matching)
      - [Convenience list functions](#convenience-list-functions)
      - [Cons operator](#cons-operator)
    - [Tuples](#tuples)
    - [Keyword Lists](#keyword-lists)
    - [Maps](#maps)
      - [Updating values inside a map:](#updating-values-inside-a-map)
    - [Structs](#structs)
  - [Flow Control Mechanisms](#flow-control-mechanisms)
    - [Case Statement](#case-statement)
    - [Cond](#cond)
    - [If/Else](#ifelse)
- [Part 2: Functional Programming Fundamentals](#part-2-functional-programming-fundamentals)
  - [Tutorials Project](#tutorials-project) - [Recursion 101](#recursion-101) - [Sum Digits using Recursion](#sum-digits-using-recursion) - [HINT: Compiling Mix modules with IEX:](#hint-compiling-mix-modules-with-iex) - [Public Functions](#public-functions) - [Recursive Factorial](#recursive-factorial)
  <!--toc:end-->

# Functional Programming With Elixir - Full Course

# Part 1: Elixir Fundamentals and Data Structures

## What does Functional Programming mean?

- It means that the program is composed of different functions
- There is no classes or objects
- All data type is immutable/constant. Since the data isn't mutable, the state remains the same. The data can be distributed more easily. It's scalable.
- We do not have `for` loops. We loop through collections using `map`, which takes a collection and applies transformations to all of its elements and then returns a **new** collection as a result.
- Elixir uses recursion

## What is Recursion (and why it's important)?

Recursion is doing the same task again and again. The task calls itself, so it runs again, and again.

(Link to code: [recursive_universe.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/recursive_universe.exs))

## Un-learning (aka _all that you know versus all that you don't_)

The `a = 1` concept isn't an assignment, it's literally the mathematical **equal**. It means that `1 = a` is the same. It's a **match** operator. That's Pattern Matching.

## Pattern Matching

`[a, a] = [1, 1]`

All data assignments in Elixir are immutable. Immutability is important for scalability.

Elixir lets you do the following:
`a = 1` and then
`a = 2`

And to be honest I still don't understand why. But to avoid that, you can use the Pin Operator:

`^a = 3`.

The teacher said that these things should be more clear in the future, as we see more examples. Immutability is important to transfer data to other places without needlessly using extra resources.

(Link to code: [pattern_matching.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/pattern_matching.exs))

## Actor Model

All code is executed within this thing called Actor. It receives messages that could be data or instructions. It process messages and returns responses. It gets, processes, and gives data back in return.

### Processes

Data can distributed among clusters of machines, horizontally. That can happen across the globe by using threads.

Actors run in processes and have an unique PID. We can communicate with these processes by message-passing. Since the data is immutable, we can create copies that can be sent to different processes. We don't need to worry if that information is transformed inside a given process; everything is done in isolation.

Each process has its own Stack and Heap allocation. Ok **NOW** I couldn't get. I know these words are in the bible, but I remember what they mean.

### Working

- Every process has its own Mailbox that receives messages
- It works independently
- It works FIFO
- It's cheap to create processes
- They communicate via message-passing

To address which PID a process is using, you can call the `self()` function.

```elixir
> IO.puts(self())

> ** (Protocol.UndefinedError) protocol String.Chars not implemented for #PID<0.98.0> of type PID
    (elixir 1.16.1) lib/string/chars.ex:3: String.Chars.impl_for!/1
    (elixir 1.16.1) lib/string/chars.ex:22: String.Chars.to_string/1
    (elixir 1.16.1) lib/io.ex:784: IO.puts/2
    process.exs:1: (file)
```

(link to code: [process.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/process.exs))

## Finally, the Hello World!

- `.exs` files are used to create scripts. So the `s` stands for "Script"
- `ex` are compile files

All Elixir code stay inside a module. Module names and file name should be the same.

We can run code using `elixir hello.exs` to run the file. For the function to return you'll have to call it, like `Hello.world()` at some point in the file.

We can also compile the `.exs` file by using `elixirc hello.exs`. Now you don't need to call the functiona explicitly.

There's a third way to run the code, which is compiling it inside the `iex`. Enter the `iex` shell and type `c filename.exs`.

Ok, there's a fourth way. Inside the `iex` you can call the module followed by the function using dot notation:

- `Hello.world()`
  It will show an atom. In this case it shows `:ok`.

To recompile an already compiled module (which process is saved in memory and needs to be re-compiled), you can use `r`. Like `r Hello.

(link to code: [hello.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/hello.exs))

## Data Types in Elixir

All data types are constants, because all data is immutable

### Atom

Their syntax is `:atom_name` or `:"Atom name"`.

An atom is the representation of the combination of a variable and its data. For example, the pseudo-code `var nike = "nike"` can be represented by `:nike`. They're useful for pattern matching.

An example is

```elixir
{:error, reason} = {:error, "file not found"}
IO.puts(reason)
```

(Link to code: [atoms.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/atoms.exs))

### String

Represent by double quotes. If you use single quotes they are character lists, which is different from a string. Elixir uses UTF-8. Inside the `iex` you can use `i("Your string")` to check extra informations about them:

```elixir
Interactive Elixir (1.16.1) - press Ctrl+C to exit (type h() ENTER for help)
iex(1)> i("My string")
Term
  "My string"
Data type
  BitString
Byte size
  9
Description
  This is a string: a UTF-8 encoded binary. It's printed surrounded by
  "double quotes" because all UTF-8 encoded code points in it are printable.
Raw representation
  <<77, 121, 32, 115, 116, 114, 105, 110, 103>>
Reference modules
  String, :binary
Implemented protocols
  Collectable, IEx.Info, Inspect, List.Chars, String.Chars
iex(2)>
```

The `<>` is the String Concatenation Operator. This is what it can do:
`"O" <> rest = "Octavarium"` . The result is `ctavarium`. What happened is "O" is matched/attributed to "O", and the remainder of the characters are now equal to `rest`.

To access the Raw representation of a char, open `iex` and type `?a` for example.

- `?a` equals to `97`
- `?b` equals to `98`
- `?c` equals to `99`

(Link to code: [strings.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/strings.exs))

### Charlist

Charlists are lists. To concatenate them, instead of `<>` we're using `++`.

```elixir
chars = "Octavarium"
IO.puts(~c"Hello, " ++ chars)
```

(Link to code: [charlist.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/charlist.exs))

You can test if something is a list using `is_list()` function. Since everything is a function, I'll stop using "xyz function", because... yeah.

### Processes (cont.)

To check the process, just use `self()`. They're unique.

(Link to code: [process.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/process.exs))

### Lists

Lists are linked lists. That means that indexing doesn't work.

- `IO.puts(list[0]) # <- it doesn't work.`

Linked lists are recursive. We handle them using recursion and built-in modules. Like `Enum`. To show the functions provided by a built-in module, open `iex` , start typing `Enum.`, and then hit Tab.

![enum builtins](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/assets/enum-functions.png)

### Function Arity

The numbers at the right of each `/` represent the number of parameters the functions expects. Some can have multiple expectations, like `any?/1` and `any?/2`. As far as I understood, they can be optional parameters. We call it Arity.

### Seeking help from documentation (Function Definition)

- Open `iex` and type `h(Enum.at)` to open `Enum.at` documentation. Pretty neat!

#### Extracting data from lists using pattern matching

```elixir
lista = ["a", "b", "c"]

[first, second, third] = lista
```

Elixir compiler will curse if you let an extracted/destrucutred variable unused. To ignore some some items from the list, use underscored (`_`).

#### Convenience list functions

```elixir
listb = ["a", "b", "c"]

hd(listb) #returns the first item

tl(listb) # returns the remaining items
```

#### Cons operator

The Cons separates the head from the remainder of the items

```elixir
listc = ["a", "b", "c", "d", "e", "f", "g"]

[h | t] = listc
```

(Link to code: [lists.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/lists.exs))

### Tuples

Tuples are defined using curly brackets (`{}`), so **THAT'S** a big difference between Elixir and JavaScript. Let's see tuples' properties. Tuples as indicated to store a small collection of entities, since they are similar to arrays.

It's commont to have tuples that have just two or three elements. But why?

It's possible to pattern match them as well. When using Phoenix frameworks, it's common to see tuples like this one:

`{:reply, msg, state} = {:reply, "Octavarium found!", ["Ocvatarium", "Louise", "Chicó"]}`

I just didn't understand why tuples are useful. I mean, in Python they are the same as sets, so they are useful for what sets are useful, mathematically. They store unique, values that can be addressed by their index. Are Elixir tuples similar? The teacher didn't explain.

(Link to code: [tuples.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/tuples.exs))

### Keyword Lists

They are key/value-paired lists. But each element inside it is actually a tuple. Ok, now tuples are getting interesting. To retrieve elements from it, it's similar to lists:

```elixir
data = [a: 1, b: 2]
IO.puts(data[:a])
```

(Link to code: [keyword_lists.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/keyword_lists.exs))

### Maps

To create a map, use curly bracket preceeded by a percent symbol: `%{}`. They are similar do Python's dictionaries (or JavaScript objects). They offer more features than Keyword Lists and Tuples.

- Example of map: `my_map = %{a: 1, b: 2, c: 3}`
- Example of a map which keys are strings: `my_map2 = %{"a" => 1, "b" => 2, "c" => 3}`

To access regular maps, you can use pattern matching, and dot notation.

- Pattern matching: `%{a: first, b: second, c: third} = my_map`
- Dot notation: `my_map.a`

To access maps which keys are strings, use arrows too:

- Arrows: `%{"c" => c} = my_map2`

#### Updating values inside a map:

```elixir
my_map = %{a: 1, b: 2, c: 3}
my_map = %{my_map | c: 4}

my_map2 = %{"a" => 1, "b" => 2, "c" => 3}
my_map2 = %{my_map2 | "c" => 4}
```

Ok, I think I understood what just happened. Before the pipe ("`|`") operator is the "head", meaning that you're appending "`'c' => 4`" to whatever that matches its key. Thinking again, the head doesn't matter because you could be replacing/updating the first/head element too. The Pattern Matching is what matters here.

Ok, Pattern Matching is a really important feature to Elixir.

(Link to code: [maps.exs](https://github.com/divertimentos/course-elixir-freecodecamp/blob/main/maps.exs))

### Structs

Structs are present in other compiled programming languages, such as C and Golang. Since I came from Python, JS and a little bit or Ruby, these concepts are new to me. Let's dive into it the hard way.

- Structs require modules.
- You define Structs similarly to the way you define maps. You just specify the struct's name:

`%User{username: "Octavarium", age: 19, email: "octa@varium.dev"}`

- They can be accessed the same way Maps are accessed, and they can be assigned to variables too.

## Flow Control Mechanisms

Other than recursion, Elixir provides a couple more mechanisms to do flow control.

### Case Statement

It works like a JS switch

### Cond

It performs a pattern match without the need of an expression

### If/Else

They exist, but we don't use them.

Nothing but RESPECT for Elixir!

---

# Part 2: Functional Programming Fundamentals

## Tutorials Project

#### Recursion 101

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

#### Sum Digits using Recursion

Do create a summation (pt-br: Somatório) function, you need to provide a starting number as a parameter and set `0` as a halt step. To summate, the recursive function (e.g.: `upto()`) should sum the starting number with `upto(num -1)`. Like this:

```elixir
defmodule SumDigits do
    def upto(0), do: 0

    def upto(num) do
        num + upto(num -1)
    end
end
```

##### HINT: Compiling Mix modules with IEX:

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

##### Public Functions

To be honest I couldn't understand what the public function added has to do with the calculation per se. The teacher said that it's more like a way to document the code. But documenting code by overloading a function like **thrice**?

> (Ok, as far as I understood, the Public Function defines optional parameters. Since they don't have body/return, it serves as a stablishment of official code, but as an information to the compiler not to break if a secondary parameter isn't provided.)

#### Recursive Factorial
