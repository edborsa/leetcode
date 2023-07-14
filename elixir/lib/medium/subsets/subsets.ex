defmodule Medium.Subsets.Subsets do
  @spec subsets(nums :: [integer]) :: [[integer]]
  def subsets(nums) do
    0..length(nums)
    |> Enum.reduce([], fn x, acc ->
      Enum.concat(combinations(x, nums), acc)
    end)
  end

  def combinations(0, _), do: [[]]
  def combinations(_, []), do: []

  def combinations(size, [h | t]) do
    for elem <- combinations(size - 1, t) do
      [h | elem]
    end ++ combinations(size, t)
  end
end
