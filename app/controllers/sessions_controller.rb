class SessionsController < ApplicationController
  def create
    user = User.find_by(email: params[:user][:email])
    if user && user.authenticate(params[:user][:password])
      session[:user_id] = user.id
      render json: user
    else
      status 422
      render json: {errors: "Username or password is incorrect."}
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
