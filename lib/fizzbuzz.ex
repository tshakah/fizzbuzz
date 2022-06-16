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

  defp do_buzz(n, i, fizz_trigger, buzz_trigger, fizz_n, buzz_n)
      when fizz_n == fizz_trigger and buzz_n == buzz_trigger do
    IO.puts("Fizzbuzz")

    do_buzz(n, i + 1, fizz_trigger, buzz_trigger, 1, 1)
  end

  defp do_buzz(n, i, fizz_trigger, buzz_trigger, fizz_n, buzz_n) when fizz_n == fizz_trigger do
    IO.puts("Fizz")

    do_buzz(n, i + 1, fizz_trigger, buzz_trigger, 1, buzz_n + 1)
  end

  defp do_buzz(n, i, fizz_trigger, buzz_trigger, fizz_n, buzz_n) when buzz_n == buzz_trigger do
    IO.puts("Buzz")

    do_buzz(n, i + 1, fizz_trigger, buzz_trigger, fizz_n + 1, 1)
  end

  defp do_buzz(n, i, fizz_trigger, buzz_trigger, fizz_n, buzz_n) do
    IO.puts(i)

    do_buzz(n, i + 1, fizz_trigger, buzz_trigger, fizz_n + 1, buzz_n + 1)
  end
end
