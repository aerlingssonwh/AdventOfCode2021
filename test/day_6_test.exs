defmodule AdventOfCode2021.Day6Test do
  use ExUnit.Case
  alias AdventOfCode2021.Day6

  @test_input "3,4,3,1,2"
  @real_input File.read!("assets/day_6_input.txt")

  test "Test input p1" do
    assert Day6.calc_lanternfish(@test_input, 80) == 5934
  end

  test "Real input p1" do
    assert Day6.calc_lanternfish(@real_input, 80) == 352_195
  end

  test "Test input p2" do
    assert Day6.calc_lanternfish(@test_input, 256) == 26_984_457_539
  end

  test "Real input p2" do
    assert Day6.calc_lanternfish(@real_input, 256) == 1_600_306_001_288
  end
end
