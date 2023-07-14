defmodule Easy.SymmetricTree.Solution do
  alias Easy.SymmetricTree.TreeNode
  @spec is_symmetric(root :: TreeNode.t() | nil) :: boolean
  def is_symmetric(root) do
    root.right == invert(root.left)
  end

  defp invert(nil), do: nil

  defp invert(node) do
    %{node | right: invert(node.left), left: invert(node.right)}
  end
end
