defmodule Easy.TwoSumA do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    nums
    |> find_sum_pair(target)
    |> find_index(nums)
  end

  defp find_index(nil, _nums), do: nil

  defp find_index([p1, p2], nums) when p1 != p2 do
    [p1, p2]
    |> Enum.map(fn x ->
      Enum.find_index(nums, fn y -> y == x end)
    end)
  end

  defp find_index([p1, p2], nums) when p1 == p2 do
    index_1 = Enum.find_index(nums, fn y -> y == p1 end)
    nums = Enum.slice(nums, (index_1 + 1)..-1)
    index_2 = Enum.find_index(nums, fn y -> y == p1 end) + index_1 + 1
    [index_1, index_2]
  end

  defp find_sum_pair([], _target), do: nil

  defp find_sum_pair([head | tail], target) do
    Enum.find(tail, &(&1 + head == target))
    |> case do
      nil ->
        find_sum_pair(tail, target)

      any ->
        [head, any]
    end
  end
end
