class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  add_flash_types :success, :warning, :danger, :info
  def current_user
    return @current_user if defined?(@current_user)
    @current_user = User.find_by(id: session[:current_user_id])
  end
  helper_method :current_user

end
