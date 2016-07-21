defmodule MathTasks do
    # Task 1: factorial
    def fact(0), do: 1
    def fact(n) when is_integer(n), do: n * fact(n - 1)

    # Task 2: fibonachi
    def fib(1), do: 0
    def fib(2), do: 1
    def fib(n) when is_integer(n), do: fib(n - 1) + fib(n - 2)
end
