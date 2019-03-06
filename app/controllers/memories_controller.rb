class MemoriesController < ApplicationController

  def new
    @trip = Trip.find(params[:trip_id])
    @memory = @trip.memories.build
  end

  def create
    trip = Trip.find(params[:trip_id])
    @memory = Memory.new(memory_params)
    @memory.trip = trip
    @memory.user = trip.user
    @memory.save
    redirect_to trip_path(trip)
  end

  def show
    @memory = Memory.find(params[:id])
  end

private

  def memory_params
    params.require(:memory).permit(:trip_id, :activity, :rating, :description, :primary_img)
  end

end
