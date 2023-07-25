defmodule Medium.InsertInterval.Solution do
  def insert(intervals, [new_begin, new_end]) do
    insert(intervals, [new_begin, new_end], [])
  end

  defp insert([], [new_begin, new_end], acc) do
    Enum.reverse([[new_begin, new_end] | acc])
  end

  defp insert([[old_begin, old_end] | t], [new_begin, new_end], acc)
       when old_begin <= new_begin and old_end < new_end and old_end >= new_begin do
    insert(t, [old_begin, new_end], acc)
  end

  defp insert([[old_begin, old_end] | t], [new_begin, new_end], acc)
       when old_begin < new_begin and old_end < new_end and old_end < new_begin do
    insert(t, [new_begin, new_end], [[old_begin, old_end] | acc])
  end

  defp insert([[old_begin, old_end] | t], [new_begin, new_end], acc)
       when old_begin > new_begin and old_end <= new_end do
    insert(t, [new_begin, new_end], acc)
  end

  defp insert([[old_begin, old_end] | _t] = rest, [new_begin, new_end], acc)
       when old_begin > new_begin and old_end > new_end and old_begin > new_end do
    Enum.reverse([[new_begin, new_end] | acc]) ++ rest
  end

  defp insert([[old_begin, old_end] | t], [new_begin, new_end], acc)
       when old_begin >= new_begin and old_end >= new_end do
    insert(t, [new_begin, old_end], acc)
  end

  defp insert([[old_begin, old_end] | t] = _rest, [new_begin, new_end], acc)
       when old_begin < new_begin and old_end > new_end do
    insert(t, [old_begin, old_end], acc)
  end
end
