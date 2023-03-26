defmodule Medium.LongestSubstringWithAtMostTwoDistinctCharacters.LongestSubstringWithAtMostTwoDistinctCharactersTest do
  use ExUnit.Case
  alias Medium.LongestSubstringWithAtMostTwoDistinctCharacters.LongestSubstringWithAtMostTwoDistinctCharacters

  test "test1" do
    assert LongestSubstringWithAtMostTwoDistinctCharacters.length_of_longest_substring_two_distinct("eceba") == 3
  end

  test "test2" do
    assert LongestSubstringWithAtMostTwoDistinctCharacters.length_of_longest_substring_two_distinct("ccaabbb") == 5
  end

  test "test3" do
    assert LongestSubstringWithAtMostTwoDistinctCharacters.length_of_longest_substring_two_distinct("aaeaaa") == 6
  end
end
