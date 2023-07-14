defmodule Easy.SameTree.SameTreeTest do
  use ExUnit.Case
  alias Easy.SameTree.SameTree

  test "test 1" do
    tree_1 =
      new_tree_node(new_tree_node(2), 1, new_tree_node(3))
      |> IO.inspect(structs: false)

    # SameTree.is_same_tree() == false
  end

  defp new_tree_node(lf \\ nil, val, rh \\ nil) do
    %TreeNode{
      val: val,
      left: lf,
      right: rh
    }
  end
end
