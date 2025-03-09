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
  test "success: get categories" do
    assert {:ok, _} = ChuckApi.get_categories()
  end

  @tag :acceptance_test
  test "success: verify available categories" do
    expected_categories = [
      "animal",
      "career",
      "celebrity",
      "dev",
      "explicit",
      "fashion",
      "food",
      "history",
      "money",
      "movie",
      "music",
      "political",
      "religion",
      "science",
      "sport",
      "travel"
    ]

    assert ChuckApi.get_categories() |> elem(1) == expected_categories
  end
end
