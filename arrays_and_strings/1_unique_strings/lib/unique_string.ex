defmodule UniqueString do

  @doc "Function to determine if a string consist from fully unique characters."
  @spec is_consist_from_unique_characters(String.t) :: boolean
  def is_consist_from_unique_characters(string) do
    {first_char, rest} = String.next_grapheme(string)
    is_consist_from_unique_characters(first_char, rest)
  end

  defp is_consist_from_unique_characters(char, rest, used_chars \\ "") do
    cond do
      String.contains?(used_chars, char) == true -> false
      String.next_grapheme(rest) == nil -> true
      true ->
	{next_char, new_rest} = String.next_grapheme(rest)
	is_consist_from_unique_characters(next_char, new_rest, used_chars <> char)
    end
  end
end
