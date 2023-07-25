defmodule Easy.BinaryTreePaths.Solution do
  defmodule TreeNode do
    @type t :: %__MODULE__{
            val: integer,
            left: TreeNode.t() | nil,
            right: TreeNode.t() | nil
          }
    defstruct val: 0, left: nil, right: nil
  end

  @spec binary_tree_paths(root :: TreeNode.t() | nil) :: [String.t()]
  def binary_tree_paths(root) do
  end
end
