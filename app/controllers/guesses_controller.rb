class GuessesController < ApplicationController

  def create
    @guess = Guess.new(game_id: params[:game_id])
    if @guess.save
      render json: @guess
    else
      status 422
      render json: @guess.errors.full_messages
    end
  end

  def show
    @guess = Guess.find_by(id: params[:id])
    render json: @guess
  end

  def index
    @game = Game.find_by(id: params[:game_id])
    @guesses = @game.guesses
    render json: @guesses
  end

end
