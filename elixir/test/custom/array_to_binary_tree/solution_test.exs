defmodule Custom.ArrayToBinaryTree.SolutionTest do
  use ExUnit.Case
  alias Custom.ArrayToBinaryTree.Solution
  alias Custom.ArrayToBinaryTree.Solution.TreeNode

  test "test 0" do
    assert Solution.binary_tree_paths([1, 2, 3, null, 5]) == %TreeNode{
             val: 1,
             left: %TreeNode{val: 2, right: %TreeNode{val: 5}},
             right: %TreeNode{val: 3}
           }
  end
end
