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
    assert Src.fib(2) == 1
    assert Src.fib(3) == 2
    assert Src.fib(4) == 3
    assert Src.fib(5) == 5
    assert Src.fib(6) == 8
    assert Src.fib(7) == 13
    assert Src.fib(8) == 21
    assert Src.fib(9) == 34
    assert Src.fib(10) == 55
    assert Src.fib(30) == 832040
    assert Src.fib(50) == 12586269025

    assert Src.even_fib_sum(21) == 10
    assert Src.even_fib_sum(30) == 10
    assert Src.even_fib_sum(4_000_000) == 4613732
  end
end
