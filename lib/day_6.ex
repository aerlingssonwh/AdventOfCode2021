defmodule AdventOfCode2021.Day6 do
  @spec calc_lanternfish(binary, integer) :: integer
  def calc_lanternfish(input, iterations) do
    input
    |> String.split(",")
    |> Enum.map(&String.to_integer/1)
    |> Enum.frequencies()
    |> update_lanternfish(iterations)
    |> Map.values()
    |> Enum.sum()
  end

  defp update_lanternfish(fish, 0), do: fish

  defp update_lanternfish(fish, count) when count > 0 do
    Enum.flat_map(fish, fn
      {0, count} -> [{6, count}, {8, count}]
      {key, count} -> [{key - 1, count}]
    end)
    |> Enum.reduce(%{}, fn {key, count}, acc -> Map.update(acc, key, count, &(&1 + count)) end)
    |> update_lanternfish(count - 1)
  end
end
