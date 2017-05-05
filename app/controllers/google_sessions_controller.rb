class GoogleSessionsController < ApplicationController
  def new
    redirect_to google_oauth2_url
  end

  def create
    session[:google_user_name] = request.env["omniauth.auth"].info.name

    redirect_to root_url
  end

  def destroy
    sessions[:google_user_name] = nil

    redirect_to root_url
  end

  private
    def google_oauth2_url
      "#{root_url}auth/google_oauth2"
    end
end
