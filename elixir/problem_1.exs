defmodule ProblemOne do
  @doc """
  If we list all the natural numbers below 10 that are multiples of 3 or 5,
  we get 3, 5, 6 and 9. The sum of these multiples is 23.
  Find the sum of all the multiples of 3 or 5 below 1000.
  https://projecteuler.net/problem=1
  http://wiki.c2.com/?FizzBuzzTest

  3 solutions for this problem
  """

  def fizz_buzz_multiples(r) do
    Enum.reduce(1..r, 0, fn x, acc ->
      if rem(x, 3) == 0 or rem(x, 5) == 0 do
        x + acc
      else
        acc
      end
    end)
  end

  # with Enum.sum
  # def fizz_buzz_multiples(r) do
  #   Enum.filter(1..r, fn n -> rem(n, 3) == 0 or rem(n, 5) == 0 end)
  #   |> Enum.sum()
  # end

  # with Enum.reduce
  #   def fizz_buzz_multiples(r) do
  #   Enum.filter(1..r, fn n -> rem(n, 3) == 0 or rem(n, 5) == 0 end)
  #   |> Enum.reduce(0, fn x, acc -> acc + x end)
  # end
end

# IO.puts(ProblemOne.fizz_buzz_multiples(9))
