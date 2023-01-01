defmodule SequencialSearchTest do
  use ExUnit.Case
  doctest SequencialSearch

  test "finds index of the first occurrence" do
    lst = [1, 2, 3, 4, 5]
    assert SequencialSearch.search(lst, 4) == 3
  end

  test "when term does not occurs expect -1" do
    lst = [1, 2, 3, 4, 5]
    assert SequencialSearch.search(lst, 6) == -1
  end
end
