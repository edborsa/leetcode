defmodule Medium.InsertInterval.SolutionTest do
  use ExUnit.Case
  alias Medium.InsertInterval.Solution

  test "test 0" do
    assert Solution.insert([[1, 3], [6, 9]], [2, 5]) == [[1, 5], [6, 9]]
  end

  test "test 1" do
    assert Solution.insert([[1, 2], [3, 5], [6, 7], [8, 10], [12, 16]], [4, 8]) == [[1, 2], [3, 10], [12, 16]]
  end

  test "test 2" do
    assert Solution.insert([], [4, 8]) == [[4, 8]]
  end

  test "test 3" do
    assert Solution.insert([[1, 5]], [2, 3]) == [[1, 5]]
  end

  test "test 4" do
    assert Solution.insert([[1, 5]], [5, 7]) == [[1, 7]]
  end

  test "test 5" do
    assert Solution.insert([[1, 5]], [1, 7]) == [[1, 7]]
  end
end
