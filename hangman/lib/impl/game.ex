defmodule Hangman.Impl.Game do
  @type t :: %__MODULE__{
          turns_left: integer,
          game_state: Hangman.state(),
          letters: list(String.t()),
          used: list(String.t())
        }

  defstruct(
    turns_left: 7,
    game_state: :initializing,
    letters: [],
    used: MapSet.new()
  )

  def new_game do
    Dictionary.random_word()
    |> new_game()
  end

  def new_game(word) do
    %Hangman.Impl.Game{
      letters: word |> String.codepoints()
    }
  end
end
