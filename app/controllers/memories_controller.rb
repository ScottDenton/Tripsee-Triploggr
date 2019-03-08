class MemoriesController < ApplicationController
  helper_method :memory_user


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
    @favorite = Favorite.new
  end

  def edit
    @trip = Trip.find(params[:trip_id])
    @user = @trip.user
    @memory = Memory.find(params[:id])
  end

  def update
    @memory = Memory.find(params[:id])
    @memory.update(memory_params)
    redirect_to user_trip_memory_path(@memory.user, @memory.trip, @memory)

  end

  def memory_user
    session[:user_id] == params[:user_id].to_i
  end


private

  def memory_params
    params.require(:memory).permit(:trip_id, :activity, :rating, :description, :primary_img)
  end

end
