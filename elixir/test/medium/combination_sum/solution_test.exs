defmodule Medium.CombinationSum.SolutionTest do
  use ExUnit.Case
  alias Medium.CombinationSum.Solution

  test "test 1" do
    assert Solution.combination_sum([2, 3, 6, 7], 7) == [[2, 2, 3], 7]
  end
end
