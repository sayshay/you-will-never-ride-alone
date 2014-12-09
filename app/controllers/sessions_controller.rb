class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.where(:name => params[:signin][:name]).first
    if user && user.authenticate(params[:signin][:password])
      session[:user_id] = user.id
      flash[:notice] = "Signed in successfully."
      redirect_to users_path
    else
      flash[:error] = "Sorry."
      render :new
    end
  end
  
  def destroy
    session.clear
    redirect_to rides_path
  end
end