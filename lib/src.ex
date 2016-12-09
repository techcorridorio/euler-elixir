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
    fibs = Enum.map(1..limit, &fib/1)
    fibs_below_limit = Enum.filter(fibs, fn (x) -> x < limit end)
    even_fibs_below_limit = Enum.filter(fibs_below_limit, &even/1)
    Enum.sum(even_fibs_below_limit)
  end

  defp even(x) do
    divisible_by(x, 2)
  end

  def fib(n) do
    help_fib(n, 0, 1)
  end

  defp help_fib(0, this_fib, _), do: this_fib
  defp help_fib(remaining, first_fib, second_fib) when remaining > 0 do
    next_fib = first_fib + second_fib
    help_fib(remaining - 1, second_fib, next_fib)
  end
end
