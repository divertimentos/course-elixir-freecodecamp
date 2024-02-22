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

(Current YouTube timestamp: 2:00:19)
