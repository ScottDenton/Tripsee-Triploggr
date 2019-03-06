class MemoriesController < ApplicationController
  # helper_method :current_user


  def new
    @trip = Trip.find(params[:trip_id])
    @memory = @trip.memories.build
    @user = @trip.user
  end

  def create
    trip = Trip.find(params[:trip_id])
    @memory = Memory.new(memory_params)
    @memory.trip = trip
    @memory.user = trip.user
    @memory.save
    redirect_to user_trip_path(trip.user, trip)
  end

  def show
    @memory = Memory.find(params[:id])
    @comment = Comment.new
    @trip = @memory.trip
    @user = @trip.user
  end

  # def current_user
  #   User.find(session[:user_id])
  # end


private

  def memory_params
    params.require(:memory).permit(:trip_id, :activity, :rating, :description, :primary_img)
  end

end
