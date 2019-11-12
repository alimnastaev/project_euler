ExUnit.start()

defmodule ProblemOneTest do
  use ExUnit.Case

  test "multiples 3 and 5" do
    assert ProblemOne.fizz_buzz_multiples(9) == 23
    assert ProblemOne.fizz_buzz_multiples(999) == 233168
    refute ProblemOne.fizz_buzz_multiples(-5) == 23
  end
end
