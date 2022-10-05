defmodule Easy.RomanToInteger.RomanToInteger do
  @spec roman_to_int(s :: String.t()) :: integer
  def roman_to_int(s) do
    s
    |> convert(0)
  end

  defp convert(<<>>, acc) do
    acc
  end

  defp convert(<<"C", "M", rest::binary>>, acc) do
    convert(rest, acc + 900)
  end

  defp convert(<<"C", "D", rest::binary>>, acc) do
    convert(rest, acc + 400)
  end

  defp convert(<<"X", "C", rest::binary>>, acc) do
    convert(rest, acc + 90)
  end

  defp convert(<<"X", "L", rest::binary>>, acc) do
    convert(rest, acc + 40)
  end

  defp convert(<<"I", "X", rest::binary>>, acc) do
    convert(rest, acc + 9)
  end

  defp convert(<<"I", "V", rest::binary>>, acc) do
    convert(rest, acc + 4)
  end

  defp convert(<<"I", rest::binary>>, acc) do
    convert(rest, acc + 1)
  end

  defp convert(<<"V", rest::binary>>, acc) do
    convert(rest, acc + 5)
  end

  defp convert(<<"X", rest::binary>>, acc) do
    convert(rest, acc + 10)
  end

  defp convert(<<"L", rest::binary>>, acc) do
    convert(rest, acc + 50)
  end

  defp convert(<<"C", rest::binary>>, acc) do
    convert(rest, acc + 100)
  end

  defp convert(<<"D", rest::binary>>, acc) do
    convert(rest, acc + 500)
  end

  defp convert(<<"M", rest::binary>>, acc) do
    convert(rest, acc + 1000)
  end
end
