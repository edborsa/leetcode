defmodule Medium.RemoveNthNodeFromEndOfListTest do
  use ExUnit.Case
  alias Medium.RemoveNthNodeFromEndOfList

  test "test 1" do
    assert RemoveNthNodeFromEndOfList.remove_nth_from_end(
             %ListNode{
               next: %ListNode{
                 next: %ListNode{
                   next: %ListNode{
                     next: %ListNode{
                       next: nil,
                       val: 5
                     },
                     val: 4
                   },
                   val: 3
                 },
                 val: 2
               },
               val: 1
             },
             2
           ) == %ListNode{
             next: %ListNode{
               next: %ListNode{
                 next: %ListNode{
                   next: nil,
                   val: 5
                 },
                 val: 3
               },
               val: 2
             },
             val: 1
           }
  end

  test "test 2" do
    assert RemoveNthNodeFromEndOfList.remove_nth_from_end(%ListNode{next: nil, val: 1}, 1) == nil
  end

  test "test 3" do
    assert RemoveNthNodeFromEndOfList.remove_nth_from_end(%ListNode{next: %ListNode{next: nil, val: 2}, val: 1}, 1) == %ListNode{next: nil, val: 1}
  end

  describe "node_list_to_array" do
    test "5 elem node list" do
      assert RemoveNthNodeFromEndOfList.node_list_to_array(%ListNode{
               next: %ListNode{
                 next: %ListNode{
                   next: %ListNode{
                     next: %ListNode{
                       next: nil,
                       val: 5
                     },
                     val: 4
                   },
                   val: 3
                 },
                 val: 2
               },
               val: 1
             }) == [5, 4, 3, 2, 1]
    end
  end
end
