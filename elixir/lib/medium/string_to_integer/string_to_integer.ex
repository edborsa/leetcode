defmodule Medium.StringToInteger.StringToInteger do
  @uper_range Integer.pow(2, 31) - 1
  @lower_range Integer.pow(2, 31) * -1
  @spec my_atoi(s :: String.t()) :: integer
  def my_atoi(s) do
    s
    |> trim_from_left_and_until_nom_digit()
    |> Integer.parse()
    |> elem(0)
    |> case do
      num when num > @uper_range ->
        @uper_range

      num when num < @lower_range ->
        @lower_range

      num ->
        num
    end
  end

  defp trim_from_left_and_until_nom_digit(s) do
    trim_from_left_and_until_nom_digit(s, "", false)
  end

  defp trim_from_left_and_until_nom_digit(<<>>, _, _), do: "0"

  defp trim_from_left_and_until_nom_digit(<<" ", rest::binary>>, "", false) do
    trim_from_left_and_until_nom_digit(rest, "", false)
  end

  defp trim_from_left_and_until_nom_digit(<<"-", rest::binary>>, "", false) do
    trim_from_left_and_until_nom_digit(rest, "-", true)
  end

  defp trim_from_left_and_until_nom_digit(<<"+", rest::binary>>, "", false) do
    trim_from_left_and_until_nom_digit(rest, "+", true)
  end

  defp trim_from_left_and_until_nom_digit(<<char, _rest::binary>> = s, acc, false) do
    if Regex.match?(~r/\d/, List.to_string([char])) do
      trim_from_left_and_until_nom_digit(s, acc, true)
    else
      trim_from_left_and_until_nom_digit("0", "", true)
    end
  end

  defp trim_from_left_and_until_nom_digit(<<char, _rest::binary>> = s, acc, true) do
    if Regex.match?(~r/\d/, List.to_string([char])) do
      acc <> s
    else
      "0"
    end
  end
end
