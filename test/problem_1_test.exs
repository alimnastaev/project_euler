ExUnit.start()

defmodule ProblemOneTest do
  use ExUnit.Case

  test "multiples 3 and 5" do
    assert ProblemOne.fizz_buzz_multiples(10) == 23
    assert ProblemOne.fizz_buzz_multiples(1000) == 233168
    refute ProblemOne.fizz_buzz_multiples(-5) == 23
  end
end
