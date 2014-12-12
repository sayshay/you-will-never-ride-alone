class SessionsController < ApplicationController
  def new
  end

  def create

    @user = User.where(:name => params[:signin][:name]).first
    if @user && @user.authenticate(params[:signin][:password])
      session[:user_id] = @user.id
      redirect_to rides_path
    else
      flash[:error] = "Sorry."
      render :new
    end
  end

  def destroy
    session.clear
    redirect_to root_path
  end
end
