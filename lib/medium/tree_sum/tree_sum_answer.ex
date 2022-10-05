# working
defmodule Medium.TreeSum.TreeSumOld do
  @spec three_sum(nums :: [integer]) :: [[integer]]
  def three_sum(nums) do
    array_size = length(nums) - 1

    freq = Enum.frequencies(nums)

    map =
      nums
      |> Enum.with_index()
      |> Enum.group_by(fn {v, _} -> v end, fn {_, i} -> i end)

    nums_as_tuple_list = List.to_tuple(nums)

    # Generate positions starting from {0,1}, {0,2},..., until (check next comment)
    Stream.unfold({0, 1}, fn {i, j} ->
      if j < array_size, do: {{i, j}, {i, j + 1}}, else: {{i, j}, {i + 1, i + 2}}
    end)
    # Until the next stored value is less then the size of the array,
    # In an array of length 5, the last would be {4,5}
    |> Stream.take_while(fn {i, _} -> i < array_size end)
    |> Stream.map(fn {i, j} ->
      elem_a = elem(nums_as_tuple_list, i)
      elem_b = elem(nums_as_tuple_list, j)

      target = -1 * (elem_a + elem_b)

      case Map.get(freq, target) do
        nil ->
          nil

        count when count >= 3 ->
          [elem_a, elem_b, target] |> Enum.sort()

        _ ->
          # Get from the frequencies 
          Map.get(map, target)
          # and filter for those that are not in position i or j, because if they are, they are one of those 
          |> Enum.filter(&(&1 != i && &1 != j))
          |> case do
            # we gotta filter out the nills
            [] -> nil
            # the right tuple
            _ -> [elem_a, elem_b, target] |> Enum.sort()
          end
      end
    end)
    |> Stream.reject(&(&1 == nil))
    |> Stream.uniq()
    |> Enum.to_list()
    |> Enum.sort()
  end
end
