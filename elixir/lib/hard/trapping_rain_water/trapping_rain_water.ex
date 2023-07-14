defmodule Hard.TrappingRainWater.TrappingRainWater do
  @spec trap(height :: [integer]) :: integer
  def trap(height) do
    max = Enum.max(height)

    height_with_index =
      height
      |> Enum.with_index()

    max..0
    |> Enum.reduce(0, fn x, acc ->
      Enum.filter(height_with_index, fn {value, _i} -> value >= x end)
      |> Enum.sort(fn {_v, i1}, {_v2, i2} -> i1 < i2 end)
      |> Enum.chunk_every(2, 1, :discard)
      |> Enum.reduce(0, fn [{v1, i1}, {v2, i2}], acc2 ->
        acc2 + (i2 - i1 - 1)
      end)
      |> Kernel.+(acc)
    end)
  end
end
