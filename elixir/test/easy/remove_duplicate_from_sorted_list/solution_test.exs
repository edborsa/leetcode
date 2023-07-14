defmodule Easy.RemoveDuplicateFromSortedList.SolutionTest do
  use ExUnit.Case
  alias Easy.RemoveDuplicateFromSortedList.Solution
  alias Easy.RemoveDuplicateFromSortedList.ListNode

  test "test -1" do
    input = nil
    assert Solution.delete_duplicates(input) == nil
  end

  test "test 0" do
    input = %ListNode{val: 1, next: nil}
    assert Solution.delete_duplicates(input) == %ListNode{val: 1, next: nil}
  end

  test "test 1" do
    input = %ListNode{val: 1, next: %ListNode{val: 1, next: nil}}
    assert Solution.delete_duplicates(input) == %ListNode{val: 1, next: nil}
  end

  test "test 2" do
    input = %ListNode{val: 1, next: %ListNode{val: 1, next: %ListNode{val: 2, next: nil}}}
    assert Solution.delete_duplicates(input) == %ListNode{val: 1, next: %ListNode{val: 2, next: nil}}
  end

  test "test 3" do
    input = %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 3, next: %ListNode{val: 3, next: nil}}}}
    assert Solution.delete_duplicates(input) == %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 3, next: nil}}}
  end

  test "test 4" do
    input = %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 3, next: nil}}}
    assert Solution.delete_duplicates(input) == %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 3, next: nil}}}
  end
end
