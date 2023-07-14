defmodule Medium.GroupAnagrams.GroupAnagramsTest do
  use ExUnit.Case
  alias Medium.GroupAnagrams.GroupAnagrams

  test "test 1" do
    assert GroupAnagrams.group_anagrams(["eat", "tea", "tan", "ate", "nat", "bat"]) == [["bat"], ["nat", "tan"], ["ate", "eat", "tea"]]
    assert GroupAnagrams.group_anagrams([""]) == [[""]]
    assert GroupAnagrams.group_anagrams(["abbbbbbbbbbb", "aaaaaaaaaaab"]) == [["aaaaaaaaaaab"], ["abbbbbbbbbbb"]]
  end
end
