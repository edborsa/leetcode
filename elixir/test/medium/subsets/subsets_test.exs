defmodule Medium.Subsets.SubsetsTest do
  use ExUnit.Case
  alias Medium.Subsets.Subsets

  describe "combinations" do
    test "combinations" do
      assert Subsets.combinations(0, [1, 2, 3]) == [[]]
      assert Subsets.combinations(2, []) == []
      assert Subsets.combinations(1, [1]) == [[1]]
      assert Subsets.combinations(1, [1, 2]) == [[1], [2]]
      assert Subsets.combinations(1, [1, 2, 3]) == [[1], [2], [3]]
      assert Subsets.combinations(2, [1]) == []
      assert Subsets.combinations(2, [1, 2]) == [[1, 2]]
      assert Subsets.combinations(3, [1, 2, 3]) == [[1, 2, 3]]
      assert Subsets.combinations(2, [1, 2, 3]) == [[1, 2], [1, 3], [2, 3]]
      assert Subsets.combinations(2, [1, 2, 3, 4]) == [[1, 2], [1, 3], [1, 4], [2, 3], [2, 4], [3, 4]]
      assert Subsets.combinations(3, [1, 2, 3, 4]) == [[1, 2, 3], [1, 2, 4], [1, 3, 4], [2, 3, 4]]
    end
  end
end
