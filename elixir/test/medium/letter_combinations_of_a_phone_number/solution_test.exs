defmodule Medium.LetterCombinationsOfAPhoneNumber.SolutionTest do
  use ExUnit.Case
  alias Medium.LetterCombinationsOfAPhoneNumber.Solution

  test "test 0" do
    assert Solution.letter_combinations("") == []
  end

  test "test 1" do
    assert Solution.letter_combinations("2") == ["a", "b", "c"]
  end

  test "test 2" do
    assert MapSet.new(Solution.letter_combinations("23")) == MapSet.new(["ad", "ae", "af", "bd", "be", "bf", "cd", "ce", "cf"])
  end
end
