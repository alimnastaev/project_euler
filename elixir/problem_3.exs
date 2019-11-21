defmodule Problem3 do
  @moduledoc """

  Problem 3: Largest prime factor

  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?
  https://projecteuler.net/problem=3

  https://www.khanacademy.org/math/pre-algebra/pre-algebra-factors-multiples/pre-algebra-prime-factorization-prealg/v/prime-factorization

  https://stackoverflow.com/questions/5811151/why-do-we-check-up-to-the-square-root-of-a-prime-number-to-determine-if-it-is-pr
  """

  @doc """
  1. with case statement
  """

  def largest_prime_factor_1(n) when n <= 1, do: "number should be greater then 1"

  def largest_prime_factor_1(n) when n > 0, do: implementation_1(n, 2)

  # base case for a recursive function
  defp implementation_1(n, factor) when factor * factor >= n, do: n

  defp implementation_1(n, factor) do
    case rem(n, factor) do
      # if it is zero we need divide n by factor and start over
      0 -> implementation_1(div(n, factor), factor)
      # if not zero => factor + 1
      _ -> implementation_1(n, factor + 1)
    end
  end

  @doc """
  2. with multiple clauses
  """

  def largest_prime_factor_2(n) when n <= 1, do: "number should be greater then 1"

  def largest_prime_factor_2(n), do: implementation_2(n, 2)

  # base case for a recursive function
  defp implementation_2(n, factor) when factor * factor >= n, do: n

  defp implementation_2(n, factor) when rem(n, factor) == 0,
    do: implementation_2(div(n, factor), factor)

  defp implementation_2(n, factor), do: implementation_2(n, factor + 1)
end

{time, solution} = :timer.tc(fn -> Problem3.largest_prime_factor_1(600_851_475_143) end)

IO.puts("1. with case statement: #{solution}")
# 6857a
IO.puts("#{time / 1000} ms")
# 0.029 ms

{time, solution} = :timer.tc(fn -> Problem3.largest_prime_factor_2(600_851_475_143) end)

IO.puts("2. with multiple clauses: #{solution}")
# 6857a
IO.puts("#{time / 1000} ms")
# 0.033 ms
