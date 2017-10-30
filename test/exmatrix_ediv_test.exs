defmodule ExMatrixEdivTest do
  use ExUnit.Case
  import ExMatrix

  test "test element-wise div of valid size matrices" do
    assert ediv([[0, -1, 2], [9, 8, 7]], [[1, 2, 4], [3, 4, -5]]) ==
      [[0, -0.5, 0.5], [3, 2, -1.4]]
  end

  test "test element-wise div of mis-matched matrices" do
    assert_raise ArgumentError, fn ->
      subtract([[0]], [[1,1]])
    end
  end

end
