defmodule Medium.RotateList.Solution do
  defmodule ListNode do
    @type t :: %__MODULE__{
            val: integer,
            next: ListNode.t() | nil
          }
    defstruct val: 0, next: nil
  end

  @spec rotate_right(head :: ListNode.t() | nil, k :: integer) :: ListNode.t() | nil
  def rotate_right(nil, _k), do: nil

  def rotate_right(%ListNode{val: _val, next: _next} = head, k) do
    deconstruct(head)
    |> rotate_n(k)
    |> reconstruct()
  end

  defp deconstruct(list, acc \\ [], size \\ 1)
  defp deconstruct(%ListNode{val: val, next: nil}, acc, size), do: {[val | acc], size}

  defp deconstruct(%ListNode{val: val, next: next}, acc, size) do
    deconstruct(next, [val | acc], size + 1)
  end

  defp rotate_n({list, size}, n) do
    n = rem(n, size)
    rotate_n(list, n, [])
  end

  defp rotate_n(rest, 0, acc), do: acc ++ Enum.reverse(rest)

  defp rotate_n([h | t], n, acc) do
    rotate_n(t, n - 1, [h | acc])
  end

  defp reconstruct([]), do: nil

  defp reconstruct([h | t] = _list) do
    %ListNode{val: h, next: reconstruct(t)}
  end
end
