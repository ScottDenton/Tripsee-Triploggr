class TripsController < ApplicationController

  def index
    @trips = Trip.where(user_id: params[:user_id])

  end

  def new
    @trip = Trip.new
    @user = User.find(session[:user_id])
  end

  def create
    @trip = Trip.new(trip_params)
    @trip.user = User.find(session[:user_id])
    @trip.save
    redirect_to user_trip_path(@trip.user, @trip)
  end

  def show
    @trip = Trip.find(params[:id])
  end

  def update
    @trip = Trip.find(params[:id])
  end

  def trip_params
    params.require(:trip).permit(:user_id, :location_id)
  end
end
