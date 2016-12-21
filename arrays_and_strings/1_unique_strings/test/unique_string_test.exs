defmodule UniqueStringTest do
  use ExUnit.Case
  doctest UniqueString

  test "works nicely with unique strings" do
    assert true == UniqueString.is_consist_from_unique_characters("ohai")
  end

  test "works nicely with non-unique strings" do
    assert false == UniqueString.is_consist_from_unique_characters("aaaa")
  end
end
