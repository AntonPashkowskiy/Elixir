defmodule FunctionsTasks do
    # Task 4: partial
    def partial(x, function) when is_function(function) do
        fn (y) -> function.(x, y) end
    end

    # Task 5: carry
    def carry(fun) do
        {_, arity} = :erlang.fun_info(fun, :arity)
        carry(fun, arity, [])
    end

    def carry(fun, 0, arguments) do
        apply(fun, Enum.reverse(arguments))
    end

    def carry(fun, arity, arguments) do
        fn arg -> carry(fun, arity - 1, [arg | arguments]) end
    end

    # Task 6: compose
    def compose(first, second) when is_function(first) and is_function(second) do
        fn arg -> second.(first.(arg)) end
    end
end
