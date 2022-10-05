defmodule Easy.ValidParentheses.ValidParenthesesTest do
  use ExUnit.Case
  alias Easy.ValidParentheses.ValidParentheses

  test "test 1" do
    assert ValidParentheses.is_valid("()") == true
    assert ValidParentheses.is_valid("()[]{}") == true
    assert ValidParentheses.is_valid("(]") == false
    assert ValidParentheses.is_valid("([)]") == false
  end
end
