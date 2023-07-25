defmodule Medium.Permutations.Solution do
  @spec permute(nums :: [integer]) :: [[integer]]
  def permute([h | t]) do
    permute(t, [[h]])
  end

  def permute([], acc), do: acc

  def permute([h | t], [acc_head | _] = acc) do
    acc_head_length = Kernel.length(acc_head)

    permute(
      t,
      Enum.reduce(acc, [], fn
        up_to_now_permutation, acc ->
          Enum.concat(
            Enum.reduce(Enum.to_list(0..acc_head_length), [], fn index, acc2 ->
              [insert_at(up_to_now_permutation, h, index) | acc2]
            end),
            acc
          )
      end)
    )
  end

  def insert_at(list, elem, 0), do: [elem | list]

  def insert_at([h | t] = list, elem, index) do
    if index > Kernel.length(list) do
      {:error, "Invalid index"}
    else
      insert_at(t, elem, index - 1, [h | []])
    end
  end

  def insert_at(list, elem, 0, acc) do
    Enum.concat(Enum.reverse([elem | acc]), list)
  end

  def insert_at([h | t], elem, index, acc) do
    insert_at(t, elem, index - 1, [h | acc])
  end

  # @spec permute(nums :: [integer]) :: [[integer]]
  # def permute([]), do: [[]]
  # def permute(list), do: for(elem <- list, rest <- permute(list -- [elem]), do: [elem | rest])
end
