defmodule Easy.MajorityElement.MajorityElementTest do
  use ExUnit.Case
  alias Easy.MajorityElement.MajorityElement

  test "test 1" do
    assert MajorityElement.majority_element([3, 2, 3]) == 3
    assert MajorityElement.majority_element([2, 2, 1, 1, 1, 2, 2]) == 2
    assert MajorityElement.majority_element([6, 5, 5]) == 5
  end
end
