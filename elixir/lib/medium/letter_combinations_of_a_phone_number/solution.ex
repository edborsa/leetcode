defmodule Medium.LetterCombinationsOfAPhoneNumber.Solution do
  @digits %{
    "2" => ["a", "b", "c"],
    "3" => ["d", "e", "f"],
    "4" => ["g", "h", "i"],
    "5" => ["j", "k", "l"],
    "6" => ["m", "n", "o"],
    "7" => ["p", "q", "r", "s"],
    "8" => ["t", "u", "v"],
    "9" => ["w", "x", "y", "z"]
  }
  @spec letter_combinations(digits :: String.t()) :: [String.t()]
  def letter_combinations(digits) do
    letter_combinations(digits, [])
  end

  defp letter_combinations("", acc), do: acc

  defp letter_combinations(<<char, rest::binary>>, acc) do
    letter_combinations(rest, create_combinations(@digits[List.to_string([char])], acc))
  end

  defp create_combinations(combinations, []), do: combinations

  defp create_combinations(combinations, acc) do
    for a <- acc, c <- combinations do
      a <> c
    end
  end
end
