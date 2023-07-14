defmodule LeetCode do
  @moduledoc """
  Documentation for `LeetCode`.
  """

  @doc """
  Hello world.

  ## Examples

      iex> LeetCode.hello()
      :world

  """
  def string_to_file_name(str) do
    str
    |> String.trim()
    |> String.downcase()
    |> String.replace(" ", "_")
  end
end
