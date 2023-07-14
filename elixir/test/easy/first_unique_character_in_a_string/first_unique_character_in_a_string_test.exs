defmodule Easy.FirstUniqueCharacterInAString.FirstUniqueCharacterInAStringTest do
  use ExUnit.Case
  alias Easy.FirstUniqueCharacterInAString.FirstUniqueCharacterInAString

  test "three_sum" do
    assert FirstUniqueCharacterInAString.first_uniq_char("ll") == -1
    assert FirstUniqueCharacterInAString.first_uniq_char("leetcode") == 0
    assert FirstUniqueCharacterInAString.first_uniq_char("aabb") == -1
  end
end
