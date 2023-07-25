defmodule Medium.AddTwoNumbers.Solution do
  alias Medium.AddTwoNumbers.ListNode

  @spec add_two_numbers(l1 :: ListNode.t() | nil, l2 :: ListNode.t() | nil) :: ListNode.t() | nil
  def add_two_numbers(l1, l2) do
    add_two_numbers(l1, l2, "", "")
  end

  defp add_two_numbers(nil, nil, a1, a2) do
    Integer.digits(String.to_integer(a1) + String.to_integer(a2))
    |> build_list_node()
  end

  defp add_two_numbers(nil, %{val: val2, next: next2}, a1, a2) do
    add_two_numbers(nil, next2, a1, "#{val2}" <> a2)
  end

  defp add_two_numbers(%{val: val1, next: next1}, nil, a1, a2) do
    add_two_numbers(next1, nil, "#{val1}" <> a1, a2)
  end

  defp add_two_numbers(%{val: val1, next: next1}, %{val: val2, next: next2}, a1, a2) do
    add_two_numbers(next1, next2, "#{val1}" <> a1, "#{val2}" <> a2)
  end

  defp build_list_node([h | t]) do
    build_list_node(t, %ListNode{val: h, next: nil})
  end

  defp build_list_node([], %ListNode{} = acc), do: acc

  defp build_list_node([h | t], %ListNode{} = acc) do
    build_list_node(t, %ListNode{val: h, next: acc})
  end
end
