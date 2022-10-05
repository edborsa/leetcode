defmodule Medium.GroupAnagrams.GroupAnagrams do
  @spec group_anagrams(strs :: [String.t()]) :: [[String.t()]]
  def group_anagrams(strs) do
    Enum.group_by(strs, fn n ->
      n
      |> String.graphemes()
      |> Enum.sort()
    end)
    |> Enum.map(fn {_k, v} -> v |> Enum.sort() end)
    |> Enum.sort_by(&length/1)
  end
end
