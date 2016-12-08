defmodule Src do
  def multiples(n) do
    range = 1..(n - 1)
    subset = Enum.filter(range, &divisible_by_three_or_five/1)
    Enum.sum(subset)
  end

  defp divisible_by_three_or_five(x) do
    divisible_by(x, 3) || divisible_by(x, 5)
    rem(x, 3) == 0 || rem(x, 5) == 0
  end

  defp divisible_by(x, y) do
    rem(x, y) == 0
  end
end
