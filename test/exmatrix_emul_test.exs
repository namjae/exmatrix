defmodule ExMatrixEmulTest do
  use ExUnit.Case
  import ExMatrix

  test "test element-wise mul of a matrix and number" do
    assert emul([[1,2], [3,4]], 2) ==
      [[2, 4], [6, 8]]
  end

  test "test element-wise mul of a matrix and non-number" do
    assert_raise FunctionClauseError, fn ->
      emul([[3,6], [9,1]], :a)
    end
  end

end
