defmodule Easy.PalindromeNumber.PalindromeNumber do
  @spec is_palindrome(x :: integer) :: boolean
  def is_palindrome(x) when x < 0, do: false

  def is_palindrome(x) do
    x
    |> Integer.digits()
    |> Kernel.==(x |> Integer.digits() |> Enum.reverse())
  end
end
