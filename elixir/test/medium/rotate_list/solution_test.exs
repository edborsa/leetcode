defmodule Medium.RotateList.SolutionTest do
  use ExUnit.Case
  alias Medium.RotateList.Solution.ListNode
  alias Medium.RotateList.Solution

  test "test 0" do
    input = %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 3, next: %ListNode{val: 4, next: %ListNode{val: 5}}}}}
    output = %ListNode{val: 4, next: %ListNode{val: 5, next: %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 3}}}}}
    assert Solution.rotate_right(input, 2) == output
  end

  test "test 1" do
    input = %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 3, next: %ListNode{val: 4, next: %ListNode{val: 5}}}}}
    output = %ListNode{val: 4, next: %ListNode{val: 5, next: %ListNode{val: 1, next: %ListNode{val: 2, next: %ListNode{val: 3}}}}}
    assert Solution.rotate_right(input, 7) == output
  end

  test "test 2" do
    input = nil
    output = nil
    assert Solution.rotate_right(input, 0) == nil
  end
end
