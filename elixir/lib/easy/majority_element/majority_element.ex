defmodule Easy.MajorityElement.MajorityElement do
  @spec majority_element(nums :: [integer]) :: integer
  def majority_element(nums) do
    frequency = (length(nums) - 1) / 2

    Enum.reduce_while(nums, %{}, fn x, acc ->
      if Map.get(acc, x, 0) >= frequency do
        {:halt, x}
      else
        {:cont, Map.update(acc, x, 1, fn v -> v + 1 end)}
      end
    end)
  end
end
