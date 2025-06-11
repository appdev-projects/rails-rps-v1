class GameController < ApplicationController
  def rules
    # The default response is HTML
    respond_to do |format|
      format.html # renders rules.html.erb
    end
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
    # Available choices for the computer
    choices = ["rock", "paper", "scissors"]
    
    # Computer makes a random choice
    @computer_move = choices.sample
    
    # Determine the outcome
    @outcome = determine_outcome(player_move, @computer_move)
    
    # Store player move for potential use in views
    @player_move = player_move
    
    # Render the appropriate view template
    render player_move
  end

  def determine_outcome(player_move, computer_move)
    if player_move == computer_move
      "It's a tie!"
    elsif winning_move?(player_move, computer_move)
      "You win!"
    else
      "You lose!"
    end
  end

  def winning_move?(player_move, computer_move)
    (player_move == "rock" && computer_move == "scissors") ||
    (player_move == "paper" && computer_move == "rock") ||
    (player_move == "scissors" && computer_move == "paper")
  end
end
