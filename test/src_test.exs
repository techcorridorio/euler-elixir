defmodule SrcTest do
  use ExUnit.Case
  doctest Src

  test "multiples" do
    assert Src.multiples(10) == 23
    assert Src.multiples(1000) == 233168
  end
end
