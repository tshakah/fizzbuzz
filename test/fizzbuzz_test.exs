defmodule FizzbuzzTest do
  use ExUnit.Case
  import ExUnit.CaptureIO
  doctest Fizz

  test "zero" do
    assert "" == capture_io(fn -> Fizz.buzz(0, 3, 5) end)
  end

  test "negative" do
    assert "" == capture_io(fn -> Fizz.buzz(-15, 3, 5) end)
  end

  test "Fizzbuzz" do
    fizzbuzz = capture_io(fn -> Fizz.buzz(16, 3, 5) end)

    assert "1\n2\nFizz\n4\nBuzz\nFizz\n7\n8\nFizz\nBuzz\n11\nFizz\n13\n14\nFizzbuzz\n16\n" =
             fizzbuzz
  end
end
