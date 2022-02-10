defmodule AdventOfCode2021.Day7 do
  def calc_fuel(input) do
    input
    |> parse()
    |> calc_least_cost_naive(fn pos1, pos2 -> abs(pos1 - pos2) end)
  end

  def calc_fuel(input, :not_constant) do
    input
    |> parse()
    |> calc_least_cost_naive(fn pos1, pos2 ->
      abs(pos1 - pos2)
      |> additive_factorial()
    end)
  end

  def additive_factorial(num) do
    (num * num + num) / 2
  end

  defp calc_least_cost_naive(positions, distance_fun) do
    positions
    |> Enum.map(fn pos1 ->
      Enum.map(positions, fn pos2 ->
        distance_fun.(pos1, pos2)
      end)
      |> Enum.sum()
    end)
    |> Enum.min()
  end

  defp parse(input) do
    input
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
  end
end
