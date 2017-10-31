class GamesController < ApplicationController

  def create
    @game = Game.new(user_id: params[:user_id])
    if @game.save
      4.times do |i|
        self.pegs << Peg.new(position: i, pegable_type: "Game", pegable_id: self.id)
      end
      render json: @game
    else
      status 422
      render json: @game.errors.full_messages
    end
  end

  def index
    @user = User.find_by(id: params[:user_id])
    @games = @user.games
    render json: @games
  end

  def show
    @game = Game.find_by(id: params[:id])
    render json: @game
  end

end
