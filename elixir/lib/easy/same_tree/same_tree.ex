defmodule Easy.SameTree.SameTree do
  @spec is_same_tree(p :: TreeNode.t() | nil, q :: TreeNode.t() | nil) :: boolean
  def is_same_tree(p, q) do
    p == q
  end
end
