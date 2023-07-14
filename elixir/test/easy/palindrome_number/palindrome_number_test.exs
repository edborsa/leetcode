defmodule Easy.PalindromeNumber.PalindromeNumberTest do
  use ExUnit.Case
  alias Easy.PalindromeNumber.PalindromeNumber

  test "test 1" do
    assert PalindromeNumber.is_palindrome(121) == true
  end

  test "test 2" do
    assert PalindromeNumber.is_palindrome(-121) == false
  end
end
