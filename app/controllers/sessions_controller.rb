class SessionsController < ApplicationController

  def new
  end

  def create
    user = User.find_by_email(params[:email])
    if user && user.authenticate(params[:password])
      session[:user_id] = user.id
      flash[:message] = "Signed in successfully"
      redirect_to '/'
    else
      flash[:error] = "Invalid Login or Password"
      redirect_to '/sign_in'
    end
  end

  def destroy
    session[:user_id] = nil
    flash[:message] = "Log out successful"
    redirect_to '/sign_in'
  end

end
