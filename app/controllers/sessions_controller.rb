class SessionsController < ApplicationController
  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      redirect_to logs_path
    else
      flash_error(key: :error, message: "Incorrect Password or Email")
      redirect_to '/login'
    end
  end

  def new
    if current_user
      redirect_to logs_path
    end
  end

  def destroy
    reset_session
    session[:user_id] = nil
    redirect_to '/login'
  end
end
