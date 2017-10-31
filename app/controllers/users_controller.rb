class UsersController < ApplicationController

  def show
    @user = User.find_by(id: params[:id])
    render json: @user
  end

  def create
    @user = User.new(username: params[:username], password: params[:password])
    if @user.save
      render json: @user
    else
      status 422
      render json: @user.errors.full_messages
    end
  end

  def index
    @users = User.all
    render json: @users
  end

end
