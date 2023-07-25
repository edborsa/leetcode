defmodule Medium.WordSearch.SolutionTest do
  use ExUnit.Case
  alias Medium.WordSearch.Solution

  test "test 0" do
    input = [["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]]
    assert Solution.exist(input, "ABCCED") == true
  end

  test "test 1" do
    input = [["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]]
    assert Solution.exist(input, "SEE") == true
  end

  test "test 2" do
    input = [["A", "B", "C", "E"], ["S", "F", "C", "S"], ["A", "D", "E", "E"]]
    assert Solution.exist(input, "ABCB") == false
  end

  test "test 3" do
    input = [
      ["A", "A", "A", "A", "A", "A"],
      ["A", "A", "A", "A", "A", "A"],
      ["A", "A", "A", "A", "A", "A"],
      ["A", "A", "A", "A", "A", "A"],
      ["A", "A", "A", "A", "A", "B"],
      ["A", "A", "A", "A", "B", "A"]
    ]

    assert Solution.exist(input, "AAAAAAAAAAAAABB") == false
  end
end
