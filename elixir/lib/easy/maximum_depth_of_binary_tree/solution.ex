defmodule Easy.MaximumDepthOfBinaryTree.Solution do
  alias Easy.MaximumDepthOfBinaryTree.TreeNode
  @spec max_depth(root :: TreeNode.t() | nil) :: integer
  def max_depth(nil), do: 0

  def max_depth(root) do
    1 + max(max_depth(root.left), max_depth(root.right))
  end
end
