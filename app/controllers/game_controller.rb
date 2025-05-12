class GameController < ApplicationController
  def rules
  end

  def rock
    play("rock")
  end

  def paper
    play("paper")
  end

  def scissors
    play("scissors")
  end

  private

  def play(player_move)
    choices = %w[rock paper scissors]
    computer_move = choices.sample

    outcome = if player_move == computer_move
                "It's a tie!"
              elsif (player_move == "rock" && computer_move == "scissors") ||
                    (player_move == "paper" && computer_move == "rock") ||
                    (player_move == "scissors" && computer_move == "paper")
                "You win!"
              else
                "You lose!"
              end

    @computer_move = computer_move
    @outcome = outcome

    render player_move
  end
end
