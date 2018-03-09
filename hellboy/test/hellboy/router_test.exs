defmodule Hellboy.RouterTest do
  use ExUnit.Case, async: true

  @tag :distributed
  test "route requests across nodes" do
    assert Hellboy.Router.route("hello", Kernel, :node, []) == :liz_sherman@localhost
    assert Hellboy.Router.route("world", Kernel, :node, []) == :abe_sapian@localhost
  end

  test "raises on unknown entries" do
    assert_raise RuntimeError, ~r/could not find entry/, fn ->
      Hellboy.Router.route(<<0>>, Kernel, :node, [])
    end
  end
end
