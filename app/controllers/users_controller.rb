class UsersController < ApplicationController

  def index
    @user = User.new
  end

  def create
    @user = User.find_or_create_by(user_params)
  end

  def show
    @user = User.find(params[:id])
    @all_trips = Trip.all
  end


  private

  def user_params

  end


end
