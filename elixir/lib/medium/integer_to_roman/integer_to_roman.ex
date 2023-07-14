defmodule Medium.IntegerToRoman.IntegerToRoman do
  @spec int_to_roman(num :: integer) :: String.t()
  def int_to_roman(num) do
    int_to_roman(num, "")
  end

  defp int_to_roman(num, acc) when num <= 0, do: acc
  defp int_to_roman(num, acc) when num >= 1000, do: int_to_roman(num - 1000, acc <> "M")
  defp int_to_roman(num, acc) when num >= 900, do: int_to_roman(num - 900, acc <> "CM")
  defp int_to_roman(num, acc) when num >= 500, do: int_to_roman(num - 500, acc <> "D")
  defp int_to_roman(num, acc) when num >= 400, do: int_to_roman(num - 400, acc <> "CD")
  defp int_to_roman(num, acc) when num >= 100, do: int_to_roman(num - 100, acc <> "C")
  defp int_to_roman(num, acc) when num >= 90, do: int_to_roman(num - 90, acc <> "XC")
  defp int_to_roman(num, acc) when num >= 50, do: int_to_roman(num - 50, acc <> "L")
  defp int_to_roman(num, acc) when num >= 40, do: int_to_roman(num - 40, acc <> "XL")
  defp int_to_roman(num, acc) when num >= 10, do: int_to_roman(num - 10, acc <> "X")
  defp int_to_roman(num, acc) when num >= 9, do: int_to_roman(num - 9, acc <> "IX")
  defp int_to_roman(num, acc) when num >= 5, do: int_to_roman(num - 5, acc <> "V")
  defp int_to_roman(num, acc) when num >= 4, do: int_to_roman(num - 4, acc <> "IV")
  defp int_to_roman(num, acc) when num >= 1, do: int_to_roman(num - 1, acc <> "I")
end
