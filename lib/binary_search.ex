defmodule BinarySearch do
  def search([], _), do: {:notfound, -1}
  def search([hd | _], term) when hd === term, do: {:ok, 0}

  def search(list = [_ | _], term) do
    search(list, term, 0, length(list) - 1)
  end

  defp search(list = [_ | _], _, min, max) when max < 0 or min == length(list),
    do: {:notfound, -1}

  defp search(lst = [_ | _], term, min, max) do
    avg =
      ((min + max) / 2)
      |> Float.floor(0)
      |> trunc

    guessed = Enum.at(lst, avg)

    cond do
      guessed === term -> {:ok, avg}
      guessed > term -> search(lst, term, min, avg - 1)
      guessed < term -> search(lst, term, avg + 1, max)
    end
  end
end

# list = [1, 2, 3, 4, 5, 6, 7, 8]
# BinarySearch.search(list, 8)
