defmodule GussTest do
  use ExUnit.Case
  doctest Guss

  test "greets the world" do
    assert Guss.hello() == :world
  end
end
