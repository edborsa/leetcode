# Backtrack
defmodule Medium.DecodeWays.Solution do
  @alphabet %{
    "A" => 1,
    "B" => 2,
    "C" => 3,
    "D" => 4,
    "E" => 5,
    "F" => 6,
    "G" => 7,
    "H" => 8,
    "I" => 9,
    "J" => 10,
    "K" => 11,
    "L" => 12,
    "M" => 13,
    "N" => 14,
    "O" => 15,
    "P" => 16,
    "Q" => 17,
    "R" => 18,
    "S" => 19,
    "T" => 20,
    "U" => 21,
    "V" => 22,
    "W" => 23,
    "X" => 24,
    "Y" => 25,
    "Z" => 26
  }

  def num_decodings(word = word) do
    num_decodings(word, 0)
  end

  defp num_decodings(<<"">>, acc) do
    acc
  end

  defp num_decodings(<<"0", rest::binary>>, acc) do
    num_decodings(rest, acc)
  end

  defp num_decodings(<<c, "0", rest::binary>>, acc) when ?c in [99] do
    num_decodings(rest, acc + 2)
  end

  defp num_decodings(<<_char, rest::binary>>, acc) do
    num_decodings(rest, acc + 1)
  end
end
