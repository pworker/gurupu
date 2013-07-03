class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  #maca helper_method :current_user, :login?
  helper_method :current_user, :login?, :flash_class, :flash_clear #maca

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end

  def login?
    return !session[:user_id].nil?
  end

end
