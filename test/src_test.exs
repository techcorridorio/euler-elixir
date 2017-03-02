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

  test 'Problem 3: Largest prime factor' do
    assert Src.prime_factors(13195) == [5, 7, 13, 29]
    assert Src.largest_prime_factor(13195) == 29
    # assert Src.largest_prime_factor(600851475143) == ???
  end

  # 2, 3, 5, 7, 11, 13, 17, 19, 23, 29, 31, 37, 41, 43, 47, 53, 59, 61, 67, 71, 73, 79, 83, 89, 97, 101, 103, 107, 109, 113, 127, 131, 137, 139, 149, 151, 157, 163, 167, 173, 179, 181
end
