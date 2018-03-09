defmodule JohannKrausTest do
  use ExUnit.Case
  doctest JohannKraus

  test "greets the world" do
    assert JohannKraus.hello() == :world
  end
end
