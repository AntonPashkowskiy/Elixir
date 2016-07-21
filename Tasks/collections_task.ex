defmodule CollectionsTasks do
    # Task 3: is_sorted
    def is_sorted?([], _), do: true
    def is_sorted?([_ | []], _), do: true
    def is_sorted?([head | tail], order_fn) when is_function(order_fn) do
        order_fn.(head, hd(tail)) and is_sorted?(tail, order_fn)
    end

    # Task 7: tail
    def tail([]), do: []
    def tail([_ | tail]), do: tail

    # Task 8: drop
    def drop([], _), do: []
    def drop(list, 0), do: list
    def drop([_ | []], _), do: []
    def drop([_ | tail], n) when n > 0 do
        drop(tail, n - 1)
    end

    # Task 9: drop while
    def drop_while([], _), do: []
    def drop_while([head | tail], predicate) when is_function(predicate) do
        case predicate.(head) do
            true -> drop_while(tail, predicate)
            false -> [head | tail]
        end
    end

    # Task 10: set head
    def set_head([], element), do: [element]
    def set_head([_ | tail], element), do: [element | tail]
end
