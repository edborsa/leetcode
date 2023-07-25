defmodule Medium.Permutations.SolutionTest do
  use ExUnit.Case
  alias Medium.Permutations.Solution

  test "test 0" do
    assert MapSet.new(Solution.permute([1, 2, 3])) == MapSet.new([[1, 2, 3], [1, 3, 2], [2, 1, 3], [2, 3, 1], [3, 1, 2], [3, 2, 1]])
  end

  test "test 1" do
    assert MapSet.new(Solution.permute([1, 2])) == MapSet.new([[1, 2], [2, 1]])
  end

  test "test 2" do
    assert Solution.permute([1]) == [[1]]
  end

  test "test4" do
    assert Solution.insert_at([], 3, 0) == [3]
    assert Solution.insert_at([1], 2, 1) == [1, 2]
    assert Solution.insert_at([1, 2], 3, 4) == {:error, "Invalid index"}
    assert Solution.insert_at([1, 2], 3, 1) == [1, 3, 2]
    assert Solution.insert_at([1, 2], 3, 2) == [1, 2, 3]
  end
end
