defmodule Medium.LongestSubstringWithAtMostTwoDistinctCharacters.LongestSubstringWithAtMostTwoDistinctCharactersVer1 do
  @spec length_of_longest_substring_two_distinct(s :: String.t()) :: integer
  def length_of_longest_substring_two_distinct(s) do
    %{sub_string: sub_string, sub_strings: sub_strings} =
      s
      |> String.graphemes()
      |> Enum.reduce(%{previous_letter: nil, last_latter: nil, sub_string: "", sub_strings: []}, fn
        x, %{previous_letter: nil, last_latter: nil} = acc ->
          %{acc | previous_letter: x, last_latter: x, sub_string: x}

        x, %{last_latter: x} = acc ->
          %{acc | sub_string: acc.sub_string <> x}

        x, %{last_latter: y, previous_letter: y} = acc when x != y ->
          %{acc | previous_letter: y, last_latter: x, sub_string: acc.sub_string <> x}

        x, %{last_latter: y, previous_letter: x} = acc when x != y ->
          %{acc | previous_letter: y, last_latter: x, sub_string: acc.sub_string <> x}

        x, %{last_latter: y, previous_letter: z} = acc when x != z and x != y ->
          case Regex.scan(~r/#{y}*$/, acc.sub_string) do
            [[""]] ->
              %{acc | previous_letter: y, last_latter: x, sub_string: x, sub_strings: [acc.sub_string | acc.sub_strings]}

            [[base_sub_str] | _] ->
              %{acc | previous_letter: y, last_latter: x, sub_string: base_sub_str <> x, sub_strings: [acc.sub_string | acc.sub_strings]}
          end
      end)

    [sub_string | sub_strings]
    |> Enum.reduce(0, fn sub_str, acc ->
      case String.length(sub_str) do
        val when val > acc ->
          val

        _ ->
          acc
      end
    end)
  end
end
