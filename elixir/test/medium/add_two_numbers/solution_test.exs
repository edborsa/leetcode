defmodule Medium.AddTwoNumbers.SolutionTest do
  use ExUnit.Case
  alias Medium.AddTwoNumbers.Solution
  alias Medium.AddTwoNumbers.ListNode

  test "test 1" do
    list_1 = %ListNode{val: 2, next: %ListNode{val: 4, next: %ListNode{val: 3}}}
    list_2 = %ListNode{val: 5, next: %ListNode{val: 6, next: %ListNode{val: 4}}}
    assert Solution.add_two_numbers(list_1, list_2) == %ListNode{val: 7, next: %ListNode{val: 0, next: %ListNode{val: 8}}}
  end

  test "test 2" do
    list_1 = %ListNode{val: 0}
    list_2 = %ListNode{val: 0}
    assert Solution.add_two_numbers(list_1, list_2) == %ListNode{val: 0}
  end

  test "test 3" do
    list_1 = %ListNode{val: 9, next: %ListNode{val: 9, next: %ListNode{val: 9}}}
    list_2 = %ListNode{val: 9, next: %ListNode{val: 9}}
    assert Solution.add_two_numbers(list_1, list_2) == %ListNode{val: 8, next: %ListNode{val: 9, next: %ListNode{val: 0, next: %ListNode{val: 1}}}}
  end

  test "test 4" do
    list_1 = %ListNode{val: 2, next: %ListNode{val: 4, next: %ListNode{val: 9}}}
    list_2 = %ListNode{val: 5, next: %ListNode{val: 6, next: %ListNode{val: 4, next: %ListNode{val: 9}}}}

    assert Solution.add_two_numbers(list_1, list_2) == %ListNode{
             val: 7,
             next: %ListNode{val: 0, next: %ListNode{val: 4, next: %ListNode{val: 0, next: %ListNode{val: 1}}}}
           }
  end
end
