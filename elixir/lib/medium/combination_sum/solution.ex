# Backtrack Voltar para aprender.
defmodule Medium.CombinationSum.Solution do
  @spec combination_sum(candidates :: [integer], target :: integer) :: [[integer]]
  def combination_sum(candidates, target) do
    loop(candidates, target, Enum.map(candidates, &[&1]))
    |> Enum.uniq_by(&Enum.sort/1)
  end

  defp loop(candidates, target, stack, result \\ [])
  defp loop(candidates, target, [] = _stack, result), do: result

  defp loop(candidates, target, [h | t] = stack, result) do
    sum = Enum.sum(h)

    cond do
      sum < target ->
        stack = Enum.map(candidates, fn c -> [c | h] end) ++ t
        loop(candidates, target, stack, result)

      sum > target ->
        loop(candidates, target, t, result)

      sum == target ->
        result = [h | result]
        loop(candidates, target, t, result)
    end
  end
end

#   @spec combination_sum(candidates :: [integer], target :: integer) :: [[integer]]
#   def combination_sum(candidates, target) do
#     solve(candidates, target, [], 0)
#   end
#
#   def solve(_candidates, target, _seq, sum) when sum > target, do: []
#
#   def solve(_candidates, target, seq, sum) when sum == target do
#     [seq]
#   end
#
#   def solve([], _target, _seq, _sum), do: []
#
#   def solve([h | t] = candidates, target, seq, sum) do
#     # DFS
#     sol1 = solve(candidates, target, [h | seq], sum + h)
#
#     # Iterate through other candidates and try out their solutions
#     sol2 = solve(t, target, seq, sum)
#
#     # Merge solutions. Empty results are fine. [[1,2,3]] ++ [] => [[1,2,3]]
#     sol1 ++ sol2
#   end
# end

# defmodule Solution do
#   @spec combination_sum(candidates :: [integer], target :: integer) :: [[integer]]
#   def combination_sum(candidates, target) do
#     Enum.reduce(candidates, [], fn x, acc -> 
#       cond do
#         x == target -> [[x]|acc]
#         x > target -> acc
#         x < target ->
#           combination_sum(candidates, target - x)
#           |> Enum.map(fn combination -> [x | combination] |> Enum.sort() end)
#           |> Kernel.++(acc)
#       end
#     end)
#     |> Enum.uniq()
#   end
# end
