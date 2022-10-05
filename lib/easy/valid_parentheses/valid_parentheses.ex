defmodule Easy.ValidParentheses.ValidParentheses do
  @spec is_valid(s :: String.t()) :: boolean
  def is_valid(s) do
    is_valid(s, %{"()" => 0, "{}" => 0, "[]" => 0}, [])
  end

  defp is_valid(<<>>, %{"()" => 0, "{}" => 0, "[]" => 0}, _), do: true
  defp is_valid(<<>>, _, _), do: false
  defp is_valid(_, %{"()" => -1}, _), do: false
  defp is_valid(_, %{"[]" => -1}, _), do: false
  defp is_valid(_, %{"{}" => -1}, _), do: false

  defp is_valid(<<"(", rest::binary>>, %{"()" => k1_acc} = acc, open_list) do
    is_valid(rest, %{acc | "()" => k1_acc + 1}, ["(" | open_list])
  end

  defp is_valid(<<")", rest::binary>>, %{"()" => k1_acc} = acc, ["(" | open_list]) do
    is_valid(rest, %{acc | "()" => k1_acc - 1}, open_list)
  end

  defp is_valid(<<")", _rest::binary>>, %{"()" => _k1_acc} = _acc, _) do
    false
  end

  defp is_valid(<<"[", rest::binary>>, %{"[]" => k1_acc} = acc, open_list) do
    is_valid(rest, %{acc | "[]" => k1_acc + 1}, ["[" | open_list])
  end

  defp is_valid(<<"]", rest::binary>>, %{"[]" => k1_acc} = acc, ["[" | open_list]) do
    is_valid(rest, %{acc | "[]" => k1_acc - 1}, open_list)
  end

  defp is_valid(<<"]", _rest::binary>>, %{"[]" => _k1_acc} = _acc, _) do
    false
  end

  defp is_valid(<<"{", rest::binary>>, %{"{}" => k1_acc} = acc, open_list) do
    is_valid(rest, %{acc | "{}" => k1_acc + 1}, ["{" | open_list])
  end

  defp is_valid(<<"}", rest::binary>>, %{"{}" => k1_acc} = acc, ["{" | open_list]) do
    is_valid(rest, %{acc | "{}" => k1_acc - 1}, open_list)
  end

  defp is_valid(<<"}", _rest::binary>>, %{"{}" => _k1_acc} = _acc, _) do
    false
  end
end
