defmodule Easy.BinaryTreeInorderTraversal.Solution do
  alias Easy.BinaryTreeInorderTraversal.TreeNode
  @spec inorder_traversal(root :: TreeNode.t() | nil) :: [integer]
  def inorder_traversal(nil), do: []

  def inorder_traversal(root) do
    inorder_traversal(root.left) ++ [root.val] ++ inorder_traversal(root.right)
  end
end
