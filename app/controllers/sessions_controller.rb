class SessionsController < ApplicationController
  def create
    user = User.find_by(username: params[:username])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      puts session[:user_id]
      render json: user
    else
      status 422
      render json: {error: "Username or password is incorrect."}
    end
  end

  def destroy
    if session.clear
      render json: {message: "Logout successsful."}
    else
      status 422
      render json: {message: "Something went wrong, logout unsuccessful."}
    end
  end
end
