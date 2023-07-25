defmodule Medium.ContainerWithMostWater.SolutionTest do
  use ExUnit.Case
  alias Medium.ContainerWithMostWater.Solution

  test "test 0" do
    assert Solution.max_area([1, 1]) == 1
  end

  test "test 1" do
    assert Solution.max_area([1, 8, 6, 2, 5, 4, 8, 3, 7]) == 49
  end
end
