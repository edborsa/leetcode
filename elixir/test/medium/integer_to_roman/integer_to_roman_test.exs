defmodule Medium.IntegerToRoman.IntegerToRomanTest do
  use ExUnit.Case
  alias Medium.IntegerToRoman.IntegerToRoman

  test "test 1" do
    assert IntegerToRoman.int_to_roman(1) == "I"
    assert IntegerToRoman.int_to_roman(3) == "III"
    assert IntegerToRoman.int_to_roman(4) == "IV"
    assert IntegerToRoman.int_to_roman(5) == "V"
    assert IntegerToRoman.int_to_roman(9) == "IX"
    assert IntegerToRoman.int_to_roman(10) == "X"
    assert IntegerToRoman.int_to_roman(1994) == "MCMXCIV"
  end
end
