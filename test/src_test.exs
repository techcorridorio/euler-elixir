defmodule SrcTest do
  use ExUnit.Case
  doctest Src

  test "Problem 1: Multiples" do
    assert Src.multiples(10) == 23
    assert Src.multiples(1000) == 233168
  end

  test "Problem 2: Even Fibonacci numbers" do
    assert Src.fib(0) == 0
    assert Src.fib(1) == 1
    assert Src.fib(2) == 2
    assert Src.fib(3) == 3
    assert Src.fib(4) == 5

    assert Src.even_fib_sum(21) == 10
    assert Src.even_fib_sum(30) == 10
  end
end
