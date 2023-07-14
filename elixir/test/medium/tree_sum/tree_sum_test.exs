defmodule Medium.TreeSum.TreeSumTest do
  use ExUnit.Case
  alias Medium.TreeSum.TreeSum

  test "three_sum" do
    assert TreeSum.three_sum([-1, 0, 1]) == [[-1, 0, 1]]
    assert TreeSum.three_sum([0, 1, 1]) == []
    assert TreeSum.three_sum([0, 0, 0]) == [[0, 0, 0]]
    assert TreeSum.three_sum([-1, 3, 2, -1]) == [[-1, -1, 2]]
    assert TreeSum.three_sum([-1, 0, 1, 2, -1, -4]) == [[-1, -1, 2], [-1, 0, 1]]
    assert TreeSum.three_sum([1, 2, -2, -1]) == []
  end
end
