class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  #protect_from_forgery with: :exception
  protect_from_forgery with: :null_session, if: ->{request.format.json?}

  include FlashErrors

  def current_user
    @current_user ||= User.find_by(id: session[:user_id]) if session[:user_id]
    if @current_user.nil?
      session[:user_id] = nil
    end
    @current_user
  end

  helper_method :current_user

  def authorize
    redirect_to '/login' unless current_user
  end
end
