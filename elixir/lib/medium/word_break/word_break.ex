defmodule Medium.WordBreak.WordBreak do
  @spec word_break(s :: String.t(), word_dict :: [String.t()]) :: boolean
  def word_break(s, word_dict) do
    word_break_recursive(s, MapSet.new(word_dict), 0, 0)
  end

  def word_break_recursive(s, word_dict, start_pointer, end_pointer) do
    cond do
      start_pointer == String.length(s) ->
        true

      end_pointer > String.length(s) ->
        false

      MapSet.member?(word_dict, String.slice(s, start_pointer, end_pointer)) &&
          word_break_recursive(s, word_dict, end_pointer + start_pointer, 0) ->
        true

      word_break_recursive(s, word_dict, start_pointer, end_pointer + 1) ->
        true

      true ->
        false
    end
  end

  # def word_break_recursive(s, word_dict, start) do
  #   Enum.reduce_while(0..String.length(s), false, fn x, acc ->
  #     if x == String.length(s) do
  #       {:halt, true}
  #     else
  #       x = start + 1
  #
  #       if MapSet.member?(word_dict, String.slice(s, start, x)) && word_break_recursive(s, word_dict, x) do
  #         {:halt, true}
  #       end
  #
  #       {:cont, acc}
  #     end
  #   end)
  # end
end
