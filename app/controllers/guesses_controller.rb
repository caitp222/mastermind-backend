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

end
