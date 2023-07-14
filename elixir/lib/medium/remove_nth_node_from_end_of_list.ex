defmodule Medium.RemoveNthNodeFromEndOfList do
  @spec remove_nth_from_end(head :: ListNode.t() | nil, n :: integer) :: ListNode.t() | nil
  def remove_nth_from_end(%ListNode{next: nil}, 1), do: nil

  def remove_nth_from_end(list_node, 1) do
    list_node
    |> node_list_to_array()
    |> Enum.slice(1..-1)
    |> array_to_list_node()
  end

  def remove_nth_from_end(%ListNode{} = head, n) do
    n = n - 1
    head = node_list_to_array(head)
    head = Enum.slice(head, 0..(n - 1)) |> Enum.concat(Enum.slice(head, (n + 1)..-1))
    array_to_list_node(head)
  end

  def node_list_to_array(list_node), do: node_list_to_array(list_node, [])
  def node_list_to_array(%ListNode{next: nil, val: elem}, array), do: [elem | array]

  def node_list_to_array(%ListNode{next: some, val: elem}, array) do
    node_list_to_array(some, [elem | array])
  end

  def array_to_list_node([h | t]) do
    array_to_list_node(t, %ListNode{next: nil, val: h})
  end

  def array_to_list_node([], last_node), do: last_node

  def array_to_list_node([h | t], last_node) do
    array_to_list_node(t, %ListNode{next: last_node, val: h})
  end
end
