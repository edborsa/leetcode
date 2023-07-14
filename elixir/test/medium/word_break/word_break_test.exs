defmodule Medium.WordBreak.WordBreakTest do
  use ExUnit.Case
  alias Medium.WordBreak.WordBreak

  test "word_break" do
    assert WordBreak.word_break("", ["leet", "code", ""]) == true
    assert WordBreak.word_break("aeb", ["a", "e"]) == false
    assert WordBreak.word_break("ae", ["a", "e"]) == true
    assert WordBreak.word_break("leetcode", ["leet", "code"]) == true
    assert WordBreak.word_break("applepenapple", ["apple", "pen"]) == true
    assert WordBreak.word_break("ccab", ["cc", "bb", "aa", "bc", "ac", "ca", "ba", "cb"]) == false
    assert WordBreak.word_break("ccacccbcab", ["cc", "bb", "aa", "bc", "ac", "ca", "ba", "cb"]) == false

    assert WordBreak.word_break("catsandogcat", ["cats", "dog", "sand", "and", "cat", "an"]) == true

    assert WordBreak.word_break(
             "aaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaaab",
             ["a", "aa", "aaa", "aaaa", "aaaaa", "aaaaaa", "aaaaaaa", "aaaaaaaa", "aaaaaaaaa", "aaaaaaaaaa"]
           ) == false
  end

  # test "foo" do
  #   assert WordBreak.foo([""], 0) == []
  #   assert WordBreak.foo([], 10) == []
  #   assert WordBreak.foo([""], 1) == [""]
  #   assert WordBreak.foo(["a", "b"], 1) == ["a", "b"]
  #   assert WordBreak.foo(["a", "b"], 2) |> MapSet.new() == ["ab", "ba", "aa", "bb"] |> MapSet.new()
  #   assert WordBreak.foo(["a", "b", "c"], 2) |> MapSet.new() == ["aa", "ab", "ac", "ba", "bb", "bc", "ca", "cb", "cc"] |> MapSet.new()
  #
  #   assert WordBreak.foo(["a", "b"], 3) |> MapSet.new() ==
  #            [
  #              "aaa",
  #              "aab",
  #              "aba",
  #              "abb",
  #              "bba",
  #              "bbb",
  #              "bab",
  #              "baa"
  #            ]
  #            |> MapSet.new()
  #
  #   assert WordBreak.foo(["a", "b", "c"], 3) |> MapSet.new() ==
  #            [
  #              "aaa",
  #              "aab",
  #              "aac",
  #              "aba",
  #              "abb",
  #              "abc",
  #              "aca",
  #              "acb",
  #              "acc",
  #              "baa",
  #              "bab",
  #              "bac",
  #              "bba",
  #              "bbb",
  #              "bbc",
  #              "bca",
  #              "bcb",
  #              "bcc",
  #              "caa",
  #              "cab",
  #              "cac",
  #              "cba",
  #              "cbb",
  #              "cbc",
  #              "cca",
  #              "ccb",
  #              "ccc"
  #            ]
  #            |> MapSet.new()
  # end
end
