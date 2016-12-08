defmodule Src do
  def multiples(n) do
    range = 1..(n - 1)
    subset = Enum.filter(range, &is_multiple/1)
    Enum.sum(subset)
  end

  defp is_multiple(x) do
    rem(x, 3) == 0 || rem(x, 5) == 0
  end
end

IO.puts(Src.multiples(10))
IO.puts(Src.multiples(1000))
