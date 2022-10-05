defmodule Easy.LongestCommonPrefix.LongestCommonPrefix do
  @spec longest_common_prefix(str_list :: [String.t()]) :: String.t()
  def longest_common_prefix(str_list) do
    {letter, _count} = next_greater_prefix(str_list)

    if Enum.any?(str_list, fn
         <<c, _rest::binary>> ->
           [c] != letter

         <<>> ->
           true
       end) do
      ""
    else
      str_list
      |> Enum.map(fn <<_, rest::binary>> -> rest end)
      |> longest_common_prefix(letter)
    end
  end

  defp longest_common_prefix([], acc), do: Enum.reverse(acc) |> List.to_string()

  defp longest_common_prefix(str_list, acc) do
    {letter, _count} = next_greater_prefix(str_list)

    if Enum.any?(str_list, fn
         <<c, _rest::binary>> ->
           [c] != letter

         <<>> ->
           true
       end) do
      acc |> Enum.reverse() |> List.to_string()
    else
      str_list
      |> Enum.map(fn <<_, rest::binary>> -> rest end)
      |> longest_common_prefix([letter | acc])
    end
  end

  defp next_greater_prefix(str_list) do
    Enum.reduce_while(str_list, [], fn
      "", _acc -> {:halt, [:error]}
      <<c, _rest::binary>>, acc -> {:cont, [c | acc]}
    end)
    |> Enum.group_by(fn x -> [x] end)
    |> Enum.map(fn {key, value} -> {key, Enum.count(value)} end)
    |> Enum.max_by(fn {_key, value} -> value end)
  end
end
