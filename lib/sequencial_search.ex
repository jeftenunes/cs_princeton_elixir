defmodule SequencialSearch do
  def search([], _), do: -1

  def search(list = [_ | _], searched) do
    search(list, searched, 0)
  end

  defp search([], _, _), do: -1

  defp search([hd | tl], searched, idx) do
    if hd === searched do
      idx
    else
      search(tl, searched, idx + 1)
    end
  end
end
