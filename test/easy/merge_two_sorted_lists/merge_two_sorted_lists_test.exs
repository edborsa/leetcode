defmodule Easy.MergeTwoSortedLists.MergeTwoSortedListsTest do
  use ExUnit.Case
  alias Easy.MergeTwoSortedLists.MergeTwoSortedLists

  test "test 1" do
    assert MergeTwoSortedLists.merge_two_lists(
             %ListNode{
               next: %ListNode{
                 next: %ListNode{
                   next: nil,
                   val: 4
                 },
                 val: 2
               },
               val: 1
             },
             %ListNode{
               next: %ListNode{
                 next: %ListNode{
                   next: nil,
                   val: 4
                 },
                 val: 3
               },
               val: 1
             }
           ) == %ListNode{
             next: %ListNode{
               next: %ListNode{
                 next: %ListNode{
                   next: %ListNode{
                     next: %ListNode{
                       next: nil,
                       val: 4
                     },
                     val: 4
                   },
                   val: 3
                 },
                 val: 2
               },
               val: 1
             },
             val: 1
           }
  end
end
