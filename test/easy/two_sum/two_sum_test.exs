defmodule Easy.TwoSumTest do
  use ExUnit.Case
  doctest LeetCode
  alias Easy.TwoSum

  test "test 1" do
    assert TwoSum.two_sum([2, 7, 11, 15], 9) == [0, 1]
  end

  test "test 2" do
    assert TwoSum.two_sum([3, 2, 4], 6) == [1, 2]
  end

  test "test 3" do
    assert TwoSum.two_sum([3, 3], 6) == [0, 1]
  end

  test "test 4" do
    assert TwoSum.two_sum([-3, 4, 3, 90], 0) == [0, 2]
  end

  test "test 5" do
    assert TwoSum.two_sum([3, 2, 4], 6) == [1, 2]
  end
end
