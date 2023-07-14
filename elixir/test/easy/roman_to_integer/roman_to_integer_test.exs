defmodule Easy.RomanToInteger.RomanToIntegerTest do
  use ExUnit.Case
  alias Easy.RomanToInteger.RomanToInteger

  test "test 1" do
    assert RomanToInteger.roman_to_int("III") == 3
    assert RomanToInteger.roman_to_int("LVIII") == 58
    assert RomanToInteger.roman_to_int("MCMXCIV") == 1994
  end
end
