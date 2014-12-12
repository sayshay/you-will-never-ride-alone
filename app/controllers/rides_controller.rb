class RidesController < ApplicationController

  def index
    @rides = Ride.all
    @user = User.find(session[:user_id])
  end

  def show
  end

  def edit
  end

  def update
  end

  def new
  end

  def create
  end

  def destroy
  end

end
