class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  helper_method :current_user

  def current_user
    @current_user ||= User.find_by_session_token(session[:session_token])
  end

  def login!(user)
    user.reset_session_token!
    session[:session_token] = user.session_token

    redirect_to user_url(user)
  end

  def logout!(user)
    user.reset_session_token!
    session[:session_token] = nil

    redirect_to new_session_url
  end

  def logged_in?
  end

end
