class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  before_action :require_login, only: :user_page

  def user_page
  end

  def current_user
    session[:name]
  end

  private
  def require_login
    redirect_to "/" if !current_user
  end
end
