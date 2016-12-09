defmodule Fib do
  def seq do
    # https://hexdocs.pm/elixir/Stream.html#unfold/2
    Stream.unfold({0,1}, fn {a,b} -> {a, {b, a + b}} end)
  end
end

defmodule Euler2 do

  def calc(seq, limit) do

    under_limit? = &(&1 < limit)
    even? = &(rem(&1,2) == 0)

    seq
    |> Stream.take_while(under_limit?)
    |> Stream.filter(even?)
    |> Enum.sum
  end


end

IO.puts(Euler2.calc(Fib.seq, 4_000_000))
