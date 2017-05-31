class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(email: params[:email])
    if user && user.password == params[:password]
      session[:current_user_id] = user.current_user_id
      redirect_to root_path
    else
      flash.now.alert = "Invalid email or password"
      render :new
    end
  end

  def destroy
    session[:current_user_id] = nil
    redirect_to root_url, notice: "Logged out!"
  end
end