class TripsController < ApplicationController

  def index
    @trips = Trip.where(user_id: params[:user_id])

  end

  def new
    @trip = Trip.new
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
