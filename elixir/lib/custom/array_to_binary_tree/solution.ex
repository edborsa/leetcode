defmodule Custom.ArrayToBinaryTree.Solution do
  defmodule TreeNode do
    @type t :: %__MODULE__{
            val: integer,
            left: TreeNode.t() | nil,
            right: TreeNode.t() | nil
          }
    defstruct val: 0, left: nil, right: nil
  end

  def array_to_tree(array) do
  end
end
