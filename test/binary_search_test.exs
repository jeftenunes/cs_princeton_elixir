defmodule BinarySearchTest do
  use ExUnit.Case
  doctest BinarySearch

  test "finds index of the first occurrence" do
    lst = [1, 2, 3, 4, 5]
    assert BinarySearch.search(lst, 4) == {:ok, 3}
  end

  test "when term does not occurs expect -1" do
    lst = [1, 2, 3, 4, 5]
    assert BinarySearch.search(lst, 6) == {:notfound, -1}
  end

  test "when list is empty expect -1" do
    lst = []
    assert BinarySearch.search(lst, 6) == {:notfound, -1}
  end
end
