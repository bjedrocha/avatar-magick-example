class SessionsController < ApplicationController
  layout 'login'

  # GET /login
  def new
  end

  # POST /sessions
  def create
    user = User.find_by_login(params[:login])
    if user.try(:authenticate, params[:password])
      session[:user_id] = user.id

      redirect_to root_path
    else
      flash.now[:error] = "Invalid login or password"
      render 'new'
    end
  end

  # GET /logout
  def destroy
    session[:user_id] = nil
    redirect_to login_path
  end
end
