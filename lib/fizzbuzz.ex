defmodule Fizz do
  @moduledoc """
  Documentation for `Fizz`.
  """

  def buzz(n, _, _) when n < 1 do
    :ok
  end

  def buzz(n, fizz_trigger, buzz_trigger) do
    do_buzz(n, 1, fizz_trigger, buzz_trigger, 1, 1)
  end

  defp do_buzz(n, i, _, _, _, _) when n < i do
    :ok
  end

  defp do_buzz(n, i, fizz_trigger, buzz_trigger, fizz_i, buzz_i)
      when fizz_i == fizz_trigger and buzz_i == buzz_trigger do
    IO.puts("Fizzbuzz")

    do_buzz(n, i + 1, fizz_trigger, buzz_trigger, 1, 1)
  end

  defp do_buzz(n, i, fizz_trigger, buzz_trigger, fizz_i, buzz_i) when fizz_i == fizz_trigger do
    IO.puts("Fizz")

    do_buzz(n, i + 1, fizz_trigger, buzz_trigger, 1, buzz_i + 1)
  end

  defp do_buzz(n, i, fizz_trigger, buzz_trigger, fizz_i, buzz_i) when buzz_i == buzz_trigger do
    IO.puts("Buzz")

    do_buzz(n, i + 1, fizz_trigger, buzz_trigger, fizz_i + 1, 1)
  end

  defp do_buzz(n, i, fizz_trigger, buzz_trigger, fizz_i, buzz_i) do
    IO.puts(i)

    do_buzz(n, i + 1, fizz_trigger, buzz_trigger, fizz_i + 1, buzz_i + 1)
  end
end
