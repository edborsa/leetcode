defmodule Easy.BinaryTreePaths.SolutionTest do
  use ExUnit.Case
  alias Easy.BinaryTreePaths.Solution
  alias Easy.BinaryTreePaths.Solution.TreeNode

  test "test 0" do
    %TreeNode{val: 1, left: %TreeNode{val: 2, right}}
    assert Solution.binary_tree_paths() == []
  end
end
