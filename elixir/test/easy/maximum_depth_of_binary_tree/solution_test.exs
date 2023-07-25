defmodule Easy.MaximumDepthOfBinaryTree.SolutionTest do
  use ExUnit.Case
  alias Easy.MaximumDepthOfBinaryTree.Solution
  alias Easy.MaximumDepthOfBinaryTree.TreeNode

  test "test 0" do
    input = %TreeNode{val: 3}

    assert Solution.max_depth(input) == 1
  end

  test "test 1" do
    input = %TreeNode{val: 3, right: %TreeNode{val: 1}}

    assert Solution.max_depth(input) == 2
  end

  test "test 2" do
    input = %TreeNode{
      val: 3,
      left: %TreeNode{val: 9},
      right: %TreeNode{
        val: 20,
        left: %TreeNode{val: 15},
        right: %TreeNode{val: 7}
      }
    }

    assert Solution.max_depth(input) == 3
  end
end
