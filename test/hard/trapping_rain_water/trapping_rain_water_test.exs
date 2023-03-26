defmodule Hard.TrappingRainWater.TrappingRainWaterTest do
  use ExUnit.Case
  alias Hard.TrappingRainWater.TrappingRainWater

  test "three_sum" do
    assert TrappingRainWater.trap([1, 0, 1]) == 1
    assert TrappingRainWater.trap([2, 1, 0, 1, 2]) == 4
    assert TrappingRainWater.trap([0, 1, 0, 2, 1, 0, 1, 3, 2, 1, 2, 1]) == 6
    assert TrappingRainWater.trap([4, 2, 0, 3, 2, 5]) == 9
  end
end
