defmodule Hangman.Impl.GameTest do
  use ExUnit.Case

  alias Hangman.Impl.Game

  test "it set random word" do
    game = Game.new_game("dislike")

    assert game.letters == ["d", "i", "s", "l", "i", "k", "e"]
  end
end
