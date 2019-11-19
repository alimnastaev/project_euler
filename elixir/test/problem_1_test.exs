ExUnit.start()

defmodule Problem1Test do
  use ExUnit.Case

  test "multiples 3 and 5" do
    assert Problem1.fizz_buzz_multiples(9) == 23
    assert Problem1.fizz_buzz_multiples(999) == 233168
    refute Problem1.fizz_buzz_multiples(-5) == 23
  end
end
