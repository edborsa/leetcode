defmodule Easy.ConvertSortedArrayToBinarySearchTree.SolutionTest do
  use ExUnit.Case
  alias Easy.ConvertSortedArrayToBinarySearchTree.Solution
  alias Easy.ConvertSortedArrayToBinarySearchTree.TreeNode

  test "test 0" do
    assert Solution.sorted_array_to_bst([]) == nil
  end

  test "test 1" do
    assert Solution.sorted_array_to_bst([1]) == %TreeNode{val: 1}
  end

  test "test 2" do
    assert Solution.sorted_array_to_bst([1, 2]) == %TreeNode{val: 2, left: %TreeNode{val: 1}}
  end

  test "test 3" do
    assert Solution.sorted_array_to_bst([1, 2, 3]) == %TreeNode{val: 2, right: %TreeNode{val: 3}, left: %TreeNode{val: 1}}
  end

  test "test 4" do
    assert Solution.sorted_array_to_bst([1, 2, 3, 4]) == %TreeNode{
             val: 2,
             right: %TreeNode{val: 4, left: %TreeNode{val: 3}},
             left: %TreeNode{val: 1}
           }
  end

  test "test 5" do
    assert Solution.sorted_array_to_bst([0, 1, 2, 3]) == %TreeNode{
             val: 1,
             right: %TreeNode{val: 3, left: %TreeNode{val: 2}},
             left: %TreeNode{val: 0}
           }
  end

  test "test 6" do
    assert Solution.sorted_array_to_bst([0, 1, 2, 3, 4]) == %TreeNode{
             val: 2,
             right: %TreeNode{val: 4, left: %TreeNode{val: 3}},
             left: %TreeNode{val: 1, left: %TreeNode{val: 0}}
           }
  end

  test "test 7" do
    assert Solution.sorted_array_to_bst([-10, -3, 0, 5, 9]) == %TreeNode{
             val: 0,
             left: %TreeNode{val: -3, left: %TreeNode{val: -10}},
             right: %TreeNode{val: 9, left: %TreeNode{val: 5}}
           }
  end

  test "middle_position" do
    assert Solution.middle_position([]) == nil
    assert Solution.middle_position([1]) == 0
    assert Solution.middle_position([1, 2]) == 0
  end
end
