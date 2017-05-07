class GoogleSessionsController < ApplicationController
  def new
    if user_logged_in?
      redirect_to root_path, notice: 'You have already logged in!' # TODO Extract
    else
      redirect_to google_oauth2_url
    end
  end

  def create
    user = User.find_or_create_by!(
      google_uid: request.env["omniauth.auth"].uid,
      google_name: request.env["omniauth.auth"].info.name,
      google_image: request.env["omniauth.auth"].info.image
    )
    session[:user_id] = user.id
    redirect_to root_url
  end

  def destroy
    session[:user_id] = nil
    redirect_to root_url
  end

  private
    def google_oauth2_url
      "#{root_url}auth/google_oauth2"
    end
end
