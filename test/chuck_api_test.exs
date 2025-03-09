defmodule ChuckApiTest do
  use ExUnit.Case
  doctest ChuckApi

  test "greets the world" do
    assert ChuckApi.hello() == :world
  end
end
