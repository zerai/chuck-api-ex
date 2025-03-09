defmodule ChuckApiTest do
  use ExUnit.Case
  doctest ChuckApi

  test "greets the world" do
    assert ChuckApi.hello() == :world
  end

  @tag :unit_test
  test "should run on commit-stage workflow" do
    assert ChuckApi.hello() == :world
  end

  @tag :acceptance_test
  test "should run on acceptance-stage workflow" do
    assert ChuckApi.hello() == :world
  end
end
