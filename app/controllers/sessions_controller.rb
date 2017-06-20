class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.authenticate(params[:password])
      session[:current_user_id] = user.id
      redirect_to root_path, success: "Logged in!"
    else
      flash.now[:danger] = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:current_user_id] = nil
    flash[:success] = "Logged out!"
    redirect_to root_url
  end
end