class GameController < ApplicationController
  def rules
    render({ :template => "/rules" })
  end

  def rock
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "We tied"
    elsif @comp_move == "paper"
      @outcome = "We lost"
    else
      @outcome = "We won"
    end
    render({ :template => "/rock" })
  end

  def paper
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "We won"
    elsif @comp_move == "paper"
      @outcome = "We tied"
    else
      @outcome = "We lost"
    end
    render({ :template => "/paper" })
  end

  def scissors
    moves = ["rock", "paper", "scissors"]

    @comp_move = moves.sample

    if @comp_move == "rock"
      @outcome = "We lost"
    elsif @comp_move == "paper"
      @outcome = "We won"
    else
      @outcome = "We tied"
    end
    render({ :template => "/scissors" })
  end
end
