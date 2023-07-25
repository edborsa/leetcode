defmodule Medium.RestoreIpAddresses.Solution do
  @spec restore_ip_addresses(s :: String.t()) :: [String.t()]
  def restore_ip_addresses(s) do
    String.to_charlist(s)
    |> then(&backtrack([], &1, length(&1), [], 0))
  end

  defp backtrack(ans, _, len, [x | _], ip_len)
       when x > 255 or
              len < 4 - ip_len or
              len >= (5 - ip_len) * 3,
       do: ans

  defp backtrack(ans, [], _, ip, _) do
    Enum.reverse(ip)
    |> Enum.map(&to_string(&1))
    |> Enum.join(".")
    |> then(&[&1 | ans])
  end

  defp backtrack(ans, [c | chars], len, ip, ip_len) when ip_len == 0 or hd(ip) == 0 do
    backtrack(ans, chars, len - 1, [c - ?0 | ip], ip_len + 1)
  end

  defp backtrack(ans, [c | chars], len, [x | ip], ip_len) do
    backtrack(ans, chars, len - 1, [x * 10 + c - ?0 | ip], ip_len)
    |> backtrack(chars, len - 1, [c - ?0, x | ip], ip_len + 1)
  end
end
