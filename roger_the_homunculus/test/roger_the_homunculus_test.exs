defmodule RogerTheHomunculusTest do
  use ExUnit.Case
  doctest RogerTheHomunculus

  test "greets the world" do
    assert RogerTheHomunculus.hello() == :world
  end
end
