ExUnit.start()

defmodule Problem3Test do
  use ExUnit.Case

  test "1st function" do
    assert Problem3.largest_prime_factor_1(8) == 2
    assert Problem3.largest_prime_factor_1(13195) == 29
    assert Problem3.largest_prime_factor_1(600_851_475_143) == 6857
    assert Problem3.largest_prime_factor_1(0) == "number should be greater then 1"
    assert Problem3.largest_prime_factor_1(1) == "number should be greater then 1"
    refute Problem3.largest_prime_factor_1(-1) == 3
  end

  test "2nd function" do
    assert Problem3.largest_prime_factor_2(8) == 2
    assert Problem3.largest_prime_factor_2(13195) == 29
    assert Problem3.largest_prime_factor_2(600_851_475_143) == 6857
    assert Problem3.largest_prime_factor_2(0) == "number should be greater then 1"
    assert Problem3.largest_prime_factor_2(1) == "number should be greater then 1"
    refute Problem3.largest_prime_factor_2(-1) == 3
  end
end
