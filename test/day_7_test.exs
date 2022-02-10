defmodule AdventOfCode2021.Day7Test do
  use ExUnit.Case
  alias AdventOfCode2021.Day7

  @test_input "16,1,2,0,4,2,7,1,2,14"
  @real_input File.read!("assets/day_7_input.txt")

  test "Test input p1" do
    assert Day7.calc_fuel(@test_input) == 37
  end

  test "Real input p1" do
    assert Day7.calc_fuel(@real_input) == 339_321
  end

  test "Test input p2" do
    assert Day7.calc_fuel(@test_input, :not_constant) == 170
  end

  test "Real input p2" do
    assert Day7.calc_fuel(@real_input, :not_constant) == 600_000
  end
end
