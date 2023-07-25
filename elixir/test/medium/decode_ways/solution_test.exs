defmodule Medium.DecodeWays.SolutionTest do
  use ExUnit.Case
  alias Medium.DecodeWays.Solution

  test "test 0" do
    assert Solution.num_decodings("") == 0
    assert Solution.num_decodings("1") == 1
    assert Solution.num_decodings("10") == 2
  end
end
