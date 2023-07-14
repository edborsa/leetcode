defmodule Easy.BinaryTreeInorderTraversal.SolutionTest do
  use ExUnit.Case
  alias Easy.BinaryTreeInorderTraversal.Solution
  alias Easy.BinaryTreeInorderTraversal.TreeNode

  test "test 0" do
    input = %TreeNode{val: 2, left: %TreeNode{val: 1, left: nil, right: nil}, right: %TreeNode{val: 3, left: nil, right: nil}}
    assert Solution.inorder_traversal(input) == [1, 3, 2]
  end

  test "test 1" do
    input = %TreeNode{val: 2, left: nil, right: nil}
    assert Solution.inorder_traversal(input) == [2]
  end
end
