class SessionsController < ApplicationController
  
  def create
    session[:password] = params[:password]
    if admin?
      flash[:notice] = "Welcome!"
      redirect_to architecture_path
    else
      flash[:notice] = "Unauthorized access"
      redirect_to new_session_path
    end
  end

  def destroy
    reset_session
    flash[:notice] = "Bye"
    redirect_to root_path
  end

end
