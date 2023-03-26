defmodule Easy.MissingNumber.MissingNumber do
  @spec missing_number(nums :: [integer]) :: integer
  def missing_number(nums) do
    array_length = length(nums)

    hash =
      nums
      |> Enum.reduce(%{}, fn x, acc ->
        Map.put(acc, "#{x}", true)
      end)

    0..array_length
    |> Enum.reduce_while(nil, fn x, acc ->
      if Map.get(hash, "#{x}") do
        {:cont, acc}
      else
        {:halt, x}
      end
    end)
  end
end
