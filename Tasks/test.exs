# Task 1: factorial
IO.puts "Test for factorial function: \n -------------------"
IO.puts "3 -> " <> to_string(MathTasks.fact(3))
IO.puts "10 -> " <> to_string(MathTasks.fact(10))
IO.puts "0 -> " <> to_string(MathTasks.fact(0))
IO.puts "-------------------"

# Task 2: fibonachi
IO.puts "Test for fibonachi function: \n -------------------"
IO.puts "5 -> " <> to_string(MathTasks.fib(5))
IO.puts "3 -> " <> to_string(MathTasks.fib(3))
IO.puts "2 -> " <> to_string(MathTasks.fib(2))
IO.puts "-------------------"

#Task 3: is sorded
IO.puts "Test for is_sorted function: \n -------------------"
IO.puts "[3, 1, 2] -> " <> to_string(CollectionsTasks.is_sorted?([3, 1, 2], fn(x, y) -> x <= y end))
IO.puts "[1, 2, 3] -> " <> to_string(CollectionsTasks.is_sorted?([1, 2, 3], fn(x, y) -> x <= y end))
IO.puts "[] -> " <> to_string(CollectionsTasks.is_sorted?([], fn(x, y) -> x <= y end))
IO.puts "-------------------"

#Task 4: partial
IO.puts "Test for partial function: \n -------------------"
mult_three = FunctionsTasks.partial(3, fn x, y -> x * y end)
IO.puts "fn(3, y) when y = 5 -> " <> to_string(mult_three.(5))
IO.puts "-------------------"

#Task 5: carry
IO.puts "Test for carry function: \n -------------------"
fun = fn x, y, z -> x + y + z end
carry_fun = FunctionsTasks.carry(fun);
IO.puts "Result: " <> to_string(carry_fun.(1).(2).(3))
IO.puts "-------------------"

#Task 6: compose
IO.puts "Test for compose function: \n -------------------"
compose = FunctionsTasks.compose(fn x -> x * 2 end, fn y -> y + 3 end)
IO.puts "compose.(5) result: " <> to_string(compose.(5))
IO.puts "-------------------"

#Task 7: tail
IO.puts "Test for tail function: \n -------------------"
IO.puts "tail([1, 2, 3]): "
IO.inspect CollectionsTasks.tail([1, 2, 3])
IO.puts "tail([]): "
IO.inspect CollectionsTasks.tail([])
IO.puts "-------------------"

#Task 8: drop
IO.puts "Test for drop function: \n -------------------"
IO.puts "drop([1, 2, 3]): "
IO.inspect CollectionsTasks.drop([1, 2, 3], 2)
IO.puts "drop([]): "
IO.inspect CollectionsTasks.drop([], 2)
IO.puts "-------------------"

#Task 9: drop while
IO.puts "Test for drop function: \n -------------------"
IO.puts "drop_while([1, 2, 3], fn x -> x != 2 end): "
IO.inspect CollectionsTasks.drop_while([1, 2, 3], fn x -> x != 2 end)
IO.puts "drop_while([], fn x -> x != 2 end): "
IO.inspect CollectionsTasks.drop([], fn x -> x != 2 end)
IO.puts "-------------------"

#Task 10: set head
IO.puts "Test for drop function: \n -------------------"
IO.puts "set head for [1, 2, 3] to 2"
IO.inspect CollectionsTasks.set_head([1, 2, 3], 2)
IO.puts "set head for [] to 2"
IO.inspect CollectionsTasks.set_head([], 2)
IO.puts "-------------------"
