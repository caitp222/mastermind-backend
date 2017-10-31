class PegsController < ApplicationController

  def create
    puts params
    if params[:game_id]
      @parent = Game.find_by(id: params[:game_id])
    elsif params[:guess_id]
      @parent = Guess.find_by(id: params[:guess_id])
    end
    @peg = Peg.new(color: params[:color], position: params[:position])
    @peg.pegable = @parent
    if @peg.save
      render json: @peg
    else
      status 422
      render json: @peg.errors.full_messages
    end
  end

  def index
    if params[:game_id]
      @parent = Game.find_by(id: params[:game_id])
    elsif params[:guess_id]
      @parent = Guess.find_by(id: params[:guess_id])
    end
    @pegs = @parent.pegs
    render json: @pegs
  end

end
