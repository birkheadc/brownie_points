class SessionsController < ApplicationController
  def create
    @user = User.find_by(user_name: params[:user_name])

    if !!@user && @user.authenticate(params[:password])
      session[:user_id] = @user.id
      redirect_to root_path
    else
      message = "Something went wrong!"
      redirect_to login_path, notice: message
    end
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_path
  end
end