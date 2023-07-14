defmodule Easy.FirstUniqueCharacterInAString.FirstUniqueCharacterInAString do
  @spec first_uniq_char(s :: String.t()) :: integer
  def first_uniq_char(s) do
    s
    |> String.graphemes()
    |> Enum.with_index()
    |> Enum.group_by(fn {v, _} -> v end, fn {_, i} -> i end)
    |> Enum.filter(fn {_key, value} -> length(value) == 1 end)
    |> Enum.sort(fn {_k, [index1]}, {_k2, [index2]} -> index1 < index2 end)
    |> case do
      [] ->
        -1

      [{_, [index]} | _] ->
        index
    end
  end
end
