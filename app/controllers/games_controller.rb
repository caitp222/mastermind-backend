class GamesController < ApplicationController

  def index
    user = User.find_by(id: params[:user_id])
    games = user.games
    render json: games
  end

end
