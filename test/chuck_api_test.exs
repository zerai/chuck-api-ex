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

  @tag :acceptance_test
  test "success: get random joke by category" do
    assert {:ok, _} = ChuckApi.get_random_joke_by_category("dev")
  end

  @tag :acceptance_test
  test "error: return 404 http status code for unknown category" do
    assert {:error, {:status, 404}} = ChuckApi.get_random_joke_by_category("unknown_category")
  end
end
