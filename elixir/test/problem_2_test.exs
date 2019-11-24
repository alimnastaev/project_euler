ExUnit.start()

defmodule Problem2Test do
  use ExUnit.Case

  test "1st function" do
    assert Problem2.sum_even_fib_1(100) == 44
    assert Problem2.sum_even_fib_1(10) == 10
    assert Problem2.sum_even_fib_1(3_999_999) == 4_613_732
    refute Problem2.sum_even_fib_1(Enum.random(0..3_999_999)) == 3_999_999
  end

  test "2nd function" do
    assert Problem2.sum_even_fib_2(100) == 44
    assert Problem2.sum_even_fib_2(10) == 10
    assert Problem2.sum_even_fib_2(3_999_999) == 4_613_732
    refute Problem2.sum_even_fib_2(Enum.random(0..3_999_999)) == 3_999_999
  end

  test "3d function" do
    assert Problem2.sum_even_fib_3(100) == 44
    assert Problem2.sum_even_fib_3(10) == 10
    assert Problem2.sum_even_fib_3(3_999_999) == 4_613_732
    refute Problem2.sum_even_fib_3(Enum.random(0..3_999_999)) == 3_999_999
  end

  test "4th function" do
    assert Problem2.sum_even_fib_4(100) == 44
    assert Problem2.sum_even_fib_4(10) == 10
    assert Problem2.sum_even_fib_4(3_999_999) == 4_613_732
    refute Problem2.sum_even_fib_4(Enum.random(0..3_999_999)) == 3_999_999
  end
end
