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

  @doc ~S"""
    iex> Src.prime_factors(6)
    [2, 3]
    iex> Src.prime_factors(13195)
    [5, 7, 13, 29]
    iex> Src.prime_factors(600851475143)
    [71, 839, 1471, 6857]
  """
  def prime_factors(number) do
    if 1 == number do
      []
    else
      evenly_divisible = fn(potential_factor) ->
        0 == rem(number, potential_factor)
      end

      factor = Enum.find(2..number, evenly_divisible)
      rest = div(number, factor)

      [factor] ++ prime_factors(rest)
    end
  end

  @doc ~S"""
    iex> Src.largest_prime_factor(6)
    3
    iex> Src.largest_prime_factor(13195)
    29
    iex> Src.largest_prime_factor(600851475143)
    6857
  """
  def largest_prime_factor(x) do
    prime_factors(x)
      |> List.last
  end
end
