ExUnit.start()

defmodule Problem3Test do
  use ExUnit.Case

  test "multiples 3 and 5" do
    assert Problem3.largest_prime_factor(8) == 2
    assert Problem3.largest_prime_factor(13195) == 29
    assert Problem3.largest_prime_factor(600851475143) == 6857
    assert Problem3.largest_prime_factor(0) == "number should be greater then 1"
    assert Problem3.largest_prime_factor(1) == "number should be greater then 1"
    refute Problem3.largest_prime_factor(-1) == 3
  end
end
