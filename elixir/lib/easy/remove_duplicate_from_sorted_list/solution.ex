defmodule Easy.RemoveDuplicateFromSortedList.Solution do
  alias Easy.RemoveDuplicateFromSortedList.ListNode
  @spec delete_duplicates(head :: ListNode.t() | nil) :: ListNode.t() | nil
  def delete_duplicates(nil) do
    nil
  end

  def delete_duplicates(head) do
    %ListNode{val: head.val, next: next_value(head.next, head.val)}
  end

  def next_value(nil, _) do
    nil
  end

  def next_value(%ListNode{val: previous_value, next: nil}, previous_value) do
    nil
  end

  def next_value(%ListNode{val: value, next: nil}, previous_value) when value != previous_value do
    %ListNode{val: value, next: nil}
  end

  def next_value(%ListNode{val: previous_value, next: next}, previous_value) do
    next_value(next, previous_value)
  end

  def next_value(%ListNode{val: value, next: next}, _previous_value) do
    %ListNode{val: value, next: next_value(next, value)}
  end
end
