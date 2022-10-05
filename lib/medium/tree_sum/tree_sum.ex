defmodule Medium.TreeSum.TreeSum do
  @spec three_sum(nums :: [integer]) :: [[integer]]
  def three_sum(list) do
    three_sum(list, [])
  end

  def three_sum([], acc), do: acc |> MapSet.new() |> MapSet.to_list()

  def three_sum([h | t], acc) do
    case two_sum(t, -h) do
      [] ->
        three_sum(t, acc)

      _any ->
        new_acc =
          two_sum(t, -h)
          |> Enum.map(fn x -> [h | x] |> Enum.sort() end)
          |> Enum.reduce(acc, fn elem, acc ->
            [elem | acc]
          end)

        three_sum(t, new_acc)
    end
  end

  def two_sum(list, to_find) do
    two_sum(list, to_find, [])
  end

  def two_sum([], _to_find, acc), do: acc

  def two_sum([h0 | t], to_find, acc) do
    Enum.find(t, fn x -> x == to_find - h0 end)
    |> case do
      nil ->
        two_sum(t, to_find, acc)

      any ->
        two_sum(t, to_find, [[h0, any] | acc])
    end
  end
end
