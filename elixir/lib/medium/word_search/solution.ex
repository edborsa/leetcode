defmodule Medium.WordSearch.Solution do
  @spec exist(board :: [[char]], word :: String.t()) :: boolean
  def exist(board, <<char, _rest::binary>> = word) do
    board =
      board
      |> build_board()

    board
    |> find_letter_positions(List.to_string([char]))
    |> Enum.reduce_while(false, fn position, acc ->
      if verify_position(board, position, word, []) do
        {:halt, true}
      else
        {:cont, acc}
      end
    end)
  end

  defp build_board(board) do
    Enum.reduce(board, %{row: 0}, fn row, row_acc ->
      row_map =
        Enum.reduce(row, %{column: 0}, fn elem, column_acc ->
          column_acc
          |> Map.put({row_acc.row, column_acc.column}, elem)
          |> Map.put(:column, column_acc.column + 1)
        end)

      Map.merge(row_acc, row_map)
      |> Map.put(:row, row_acc.row + 1)
    end)
  end

  defp find_letter_positions(board, letter) do
    Enum.reduce(board, [], fn
      {key, value}, acc when value == letter ->
        [key | acc]

      _, acc ->
        acc
    end)
  end

  defp verify_position(_board, _position, <<"">>, _used), do: true

  defp verify_position(board, {row, column}, <<char, rest::binary>> = _word, used) do
    letter = List.to_string([char])

    [{row, column}, {row + 1, column}, {row - 1, column}, {row, column + 1}, {row, column - 1}]
    |> Enum.reject(fn x -> x in used end)
    |> Enum.filter(fn x -> Map.get(board, x) == letter end)
    |> case do
      [] -> false
      list -> Enum.any?(list, fn x -> verify_position(board, x, rest, [x | used]) end)
    end
  end
end
