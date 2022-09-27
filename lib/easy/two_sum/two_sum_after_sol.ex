defmodule Easy.TwoSum do
  @spec two_sum(nums :: [integer], target :: integer) :: [integer]
  def two_sum(nums, target) do
    response =
      nums
      |> Enum.reduce_while(%{positions: %{}, index1: -1, index2: -1, current_position: 0}, fn elem, acc ->
        looking_elem = target - elem

        Enum.find(Enum.slice(nums, (acc.current_position + 1)..-1), fn x -> x == looking_elem end)
        |> case do
          nil ->
            {:cont,
             %{
               acc
               | positions: Map.put(acc.positions, elem, acc.current_position),
                 current_position: acc.current_position + 1
             }}

          looking_elem ->
            {:halt,
             %{
               acc
               | index1: acc.current_position,
                 index2:
                   nums
                   |> Enum.slice((acc.current_position + 1)..-1)
                   |> Enum.find_index(fn x -> x == looking_elem end)
                   |> Kernel.+(acc.current_position + 1)
             }}
        end
      end)

    [response.index1, response.index2]
  end
end
