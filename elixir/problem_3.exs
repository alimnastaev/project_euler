defmodule Problem3 do
  @moduledoc """

  Problem 3: Largest prime factor

  The prime factors of 13195 are 5, 7, 13 and 29.
  What is the largest prime factor of the number 600851475143 ?
  https://projecteuler.net/problem=3

  https://www.khanacademy.org/math/pre-algebra/pre-algebra-factors-multiples/pre-algebra-prime-factorization-prealg/v/prime-factorization

  """

  @doc """
  1. with recursion
  """

  def largest_prime_factor(n) when n <= 1, do: "number should be greater then 1"

  def largest_prime_factor(n) when n > 0, do: implementation(n, 2)

  # base case for a recursive function
  defp implementation(n, factor) when div(n, factor) == 1, do: n

  defp implementation(n, factor) do
    case rem(n, factor) do
      # if it is zero we need divide n by factor and start over
      0 -> implementation(div(n, factor), factor)
      # if not zero => factor + 1
      _ -> implementation(n, factor + 1)
    end
  end
end
