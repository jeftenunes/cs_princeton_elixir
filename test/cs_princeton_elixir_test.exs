defmodule CsPrincetonElixirTest do
  use ExUnit.Case
  doctest CsPrincetonElixir

  test "greets the world" do
    assert CsPrincetonElixir.hello() == :world
  end
end
