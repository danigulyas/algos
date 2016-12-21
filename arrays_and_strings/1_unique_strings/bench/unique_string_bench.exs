defmodule UniqueStringBench do
  use Benchfella

  #doesn't really makes sense though as a benchmark, since it'll always takes as long as the first non-unique character
  #at the time of writing afaik there was 30592 unicode characters recognized by Elixir
  #worst case if n > 30592 then O(30592), otherwise O(n)
  bench "is_consist_from_unique_characters with 500000 long", [test_str: FakerElixir.Lorem.characters(500000)] do
    UniqueString.is_consist_from_unique_characters(test_str)
  end
end
