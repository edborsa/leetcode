defmodule Easy.MissingNumber.MissingNumberTest do
  use ExUnit.Case
  alias Easy.MissingNumber.MissingNumber

  test "three_sum" do
    assert MissingNumber.missing_number([3, 0, 1]) == 2
    assert MissingNumber.missing_number([0, 1]) == 2
  end
end
