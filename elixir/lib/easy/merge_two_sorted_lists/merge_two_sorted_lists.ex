# # Definition for singly-linked list.
# defmodule ListNode do
#   @type t :: %__MODULE__{
#           val: integer,
#           next: ListNode.t() | nil
#         }
#   defstruct val: 0, next: nil
# end

defmodule Easy.MergeTwoSortedLists.MergeTwoSortedLists do
  @spec merge_two_lists(list1 :: ListNode.t() | nil, list2 :: ListNode.t() | nil) :: ListNode.t() | nil
  def merge_two_lists(nil, nil), do: nil
  def merge_two_lists(l1, nil), do: l1
  def merge_two_lists(nil, l2), do: l2

  def merge_two_lists(%ListNode{val: v1, next: n1} = list1, %ListNode{val: v2, next: n2} = list2) do
    if v1 <= v2 do
      merge_two_lists(n1, list2, [v1])
    else
      merge_two_lists(list1, n2, [v2])
    end
  end

  defp merge_two_lists(nil, nil, acc) do
    array_to_list_node(acc)
  end

  defp merge_two_lists(%ListNode{val: v1, next: n1}, nil, acc) do
    merge_two_lists(n1, nil, [v1 | acc])
  end

  defp merge_two_lists(nil, %ListNode{val: v2, next: n2}, acc) do
    merge_two_lists(nil, n2, [v2 | acc])
  end

  defp merge_two_lists(%ListNode{val: v1, next: n1}, %ListNode{val: v2, next: _n2} = list2, acc) when v1 <= v2 do
    merge_two_lists(n1, list2, [v1 | acc])
  end

  defp merge_two_lists(%ListNode{val: v1, next: _n1} = list1, %ListNode{val: v2, next: n2}, acc) when v1 > v2 do
    merge_two_lists(list1, n2, [v2 | acc])
  end

  def array_to_list_node([h | t]) do
    array_to_list_node(t, %ListNode{next: nil, val: h})
  end

  def array_to_list_node([], last_node), do: last_node

  def array_to_list_node([h | t], last_node) do
    array_to_list_node(t, %ListNode{next: last_node, val: h})
  end
end
