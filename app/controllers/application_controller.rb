class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :user_logged_in?, :current_user

  def user_logged_in?
    session[:user_id]
  end

  def current_user
    User.find_by(id: session[:user_id]) if user_logged_in?
  end

  def authorize_user
    redirect_to root_path unless user_logged_in?
  end
end
