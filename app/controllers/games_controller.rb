class GamesController < ApplicationController

  def create
    game = Game.new(user_id: params[:user_id])
    if game.save
      render json: game
    else
      status 422
      render json: game.errors.full_messages
    end
  end

  def index
    user = User.find_by(id: params[:user_id])
    games = user.games
    render json: games
  end


end
