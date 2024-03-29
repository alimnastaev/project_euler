defmodule Problem2 do
  require Integer

  @moduledoc """

  Problem 2: Even Fibonacci numbers

  Each new term in the Fibonacci sequence is generated by adding the previous two terms.
  By starting with 1 and 2, the first 10 terms will be:

        1, 2, 3, 5, 8, 13, 21, 34, 55, 89, ...

  By considering the terms in the Fibonacci sequence whose values do not exceed four million,
  find the sum of the even-valued terms.

  https://projecteuler.net/problem=2


  Elixir Streams: https://hexdocs.pm/elixir/Stream.html
  Elixir Integer: https://hexdocs.pm/elixir/Integer.html#is_even/1
  """

  @doc """
  1. with Enum.reduce and rem()
  """

  def sum_even_fib_1(n) do
    Stream.unfold({1, 2}, fn {a, b} -> {a, {b, a + b}} end)
    |> Enum.take_while(fn x -> x < n end)
    |> Enum.reduce(0, fn
      x, acc when rem(x, 2) == 0 -> x + acc
      _x, acc -> acc
    end)
  end

  @doc """
  2. with Enum.filter() and Enum.sum()
  """

  def sum_even_fib_2(n) do
    Stream.unfold({1, 2}, fn {a, b} -> {a, {b, a + b}} end)
    |> Enum.take_while(fn x -> x < n end)
    |> Stream.filter(fn x -> rem(x, 2) == 0 end)
    |> Enum.sum()
  end

  @doc """
  3. with Enum.reduce and Integer.is_even()
  """

  def sum_even_fib_3(n) do
    Stream.unfold({1, 2}, fn {a, b} -> {a, {b, a + b}} end)
    |> Enum.take_while(fn x -> x < n end)
    |> Enum.reduce(0, fn x, acc -> if Integer.is_even(x), do: x + acc, else: acc end)
  end

  @doc """
  4. refactored with multiple functions and Enum.reduce() and Integer.is_even(), but more Elixiry
  """

  def sum_even_fib_4(n) do
    fib_stream()
    |> Enum.take_while(limit(n))
    |> Enum.reduce(0, &sum_even/2)
  end

  def fib_stream do
    Stream.unfold({1, 2}, fn {a, b} -> {a, {b, a + b}} end)
  end

  def limit(n) do
    fn x -> x < n end
  end

  def sum_even(n, acc) do
    if Integer.is_even(n), do: n + acc, else: acc
  end
end

{time, solution} = :timer.tc(fn -> Problem2.sum_even_fib_1(3_999_999) end)

IO.puts("1. with Enum.reduce(): #{solution}")
# 4613732
IO.puts("#{time / 1000} ms")
# 1.02 ms

{time, solution} = :timer.tc(fn -> Problem2.sum_even_fib_2(3_999_999) end)

IO.puts("2. with Enum.filter() and Enum.sum(): #{solution}")
# 4613732
IO.puts("#{time / 1000} ms")
# 0.724 ms

{time, solution} = :timer.tc(fn -> Problem2.sum_even_fib_3(3_999_999) end)

IO.puts("3. with Enum.reduce and Integer.is_even(): #{solution}")
# 4613732
IO.puts("#{time / 1000} ms")
# 0.004 ms

{time, solution} = :timer.tc(fn -> Problem2.sum_even_fib_4(3_999_999) end)

IO.puts("4. with multiple functions and Enum.reduce() + Integer.is_even(): #{solution}")
# 4613732
IO.puts("#{time / 1000} ms")
# 0.006 ms
