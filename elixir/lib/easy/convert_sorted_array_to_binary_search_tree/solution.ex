defmodule Easy.ConvertSortedArrayToBinarySearchTree.Solution do
  alias Easy.ConvertSortedArrayToBinarySearchTree.TreeNode
  @spec sorted_array_to_bst(nums :: [integer]) :: TreeNode.t() | nil
  def sorted_array_to_bst([]), do: nil

  def sorted_array_to_bst([elem | []]), do: %TreeNode{val: elem}

  def sorted_array_to_bst(nums) do
    case middle_position(nums) do
      0 ->
        if Enum.at(nums, 0) > Enum.at(nums, 1) do
          %TreeNode{val: Enum.at(nums, 0), right: sorted_array_to_bst(Enum.slice(nums, 1..1))}
        else
          %TreeNode{val: Enum.at(nums, 1), left: sorted_array_to_bst(Enum.slice(nums, 0..0))}
        end

      middle_position ->
        %TreeNode{
          val: Enum.at(nums, middle_position),
          left: sorted_array_to_bst(Enum.slice(nums, 0..(middle_position - 1))),
          right: sorted_array_to_bst(Enum.slice(nums, (middle_position + 1)..-1))
        }
    end
  end

  def middle_position([]), do: nil

  def middle_position(array) do
    if rem(length(array), 2) == 0 do
      div(length(array), 2) - 1
    else
      div(length(array), 2)
    end
  end
end
