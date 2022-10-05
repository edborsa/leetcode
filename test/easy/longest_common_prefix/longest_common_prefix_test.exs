defmodule Easy.LongestCommonPrefix.LongestCommonPrefixTest do
  use ExUnit.Case
  alias Easy.LongestCommonPrefix.LongestCommonPrefix

  test "test 1" do
    assert LongestCommonPrefix.longest_common_prefix(["flower", "flow", "flight"]) == "fl"
    assert LongestCommonPrefix.longest_common_prefix(["fa", "fe", "fi"]) == "f"
    assert LongestCommonPrefix.longest_common_prefix(["dog", "racecar", "car"]) == ""
    assert LongestCommonPrefix.longest_common_prefix(["fa", "", "fi"]) == ""
  end
end
