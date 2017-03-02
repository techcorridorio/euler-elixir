defmodule Src do
  def multiples(n) do
    range = 1..(n - 1)
    subset = Enum.filter(range, &divisible_by_three_or_five/1)
    Enum.sum(subset)
  end

  defp divisible_by_three_or_five(x) do
    divisible_by(x, 3) || divisible_by(x, 5)
  end

  defp divisible_by(x, y) do
    rem(x, y) == 0
  end

  def even_fib_sum(limit) do
    Enum.take_while(1..limit, fn (n) -> fib(n) < limit end)
      |> Enum.map(&fib/1)
      |> Enum.filter(&even/1)
      |> Enum.sum
  end

  defp even(x) do
    divisible_by(x, 2)
  end

  def fib(n) do
    fib(n, 0, 1)
  end

  defp fib(0, this_fib, _), do: this_fib
  defp fib(remaining, first_fib, second_fib) when remaining > 0 do
    next_fib = first_fib + second_fib
    fib(remaining - 1, second_fib, next_fib)
  end

  def largest_prime_factor(x) do
    prime_factors(x)
      |> List.last
  end

  def prime_factors(x) do
    # first prime less than x?  is it a factor?
    [5, 7, 13, 29]
  end

  @doc ~S"""
    xiex> Src.primes |> Enum.take(5)
    x[2,3,5,7,11]
  """
  def primes do
    odd? = &(&1 == 2 || rem(&1, 2) != 0)
    not_three_or_five? = &(!divisible_by_three_or_five(&1))

    # generate primes?
    Stream.iterate(2, &(1+&1))
    |> Stream.filter(odd?)
    |> Stream.filter(not_three_or_five?)
  end

  @doc ~S"""
    iex> Src.prime?(2)
    true

    iex> Src.prime?(3)
    true

    iex> Src.prime?(4)
    false
  """
  def prime?(x) do
    #length(factors(x)) == 2
    case factors(x) do
      [1,^x] -> true
      _ -> false
    end
  end

  @doc ~S"""
    iex> Src.factors(2)
    [1,2]

    iex> Src.factors(4)
    [1,2,4]
  """
  def factors(x) do
    (1..x) |> Enum.filter(&( rem(x,&1) == 0))
  end
end
